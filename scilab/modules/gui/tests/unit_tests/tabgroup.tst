// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// Unitary tests for Scilab Java tabgroup

// Exec tests common to all uicontrols
clear uicontrol_generic_test
exec("SCI/modules/gui/tests/unit_tests/uicontrol_generic_test.sci");
if uicontrol_generic_test("popupmenu") <> 0 then pause; end

h = uicontrol("parent", scf(), "style", "tabgroup");

// --- Value tests ---
// Default value
assert_checkequal(get(h, "value"), []);

set(h, "value", 1);
assert_checkequal(get(h, "value"), 1);