#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct unwind_info {int /*<<< orphan*/  max_stack; } ;
typedef  int /*<<< orphan*/  Dwfl_Frame ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int DWARF_CB_ABORT ; 
 int DWARF_CB_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct unwind_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct unwind_info*) ; 

__attribute__((used)) static int
FUNC5(Dwfl_Frame *state, void *arg)
{
	struct unwind_info *ui = arg;
	Dwarf_Addr pc;
	bool isactivation;

	if (!FUNC1(state, &pc, NULL)) {
		FUNC3("%s", FUNC0(-1));
		return DWARF_CB_ABORT;
	}

	// report the module before we query for isactivation
	FUNC4(pc, ui);

	if (!FUNC1(state, &pc, &isactivation)) {
		FUNC3("%s", FUNC0(-1));
		return DWARF_CB_ABORT;
	}

	if (!isactivation)
		--pc;

	return FUNC2(pc, ui) || !(--ui->max_stack) ?
	       DWARF_CB_ABORT : DWARF_CB_OK;
}