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
struct __addr_die_search_param {scalar_t__ addr; int /*<<< orphan*/  die_mem; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int DWARF_CB_ABORT ; 
 int DWARF_CB_OK ; 
 scalar_t__ DW_TAG_subprogram ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(Dwarf_Die *fn_die, void *data)
{
	struct __addr_die_search_param *ad = data;
	Dwarf_Addr addr = 0;

	if (FUNC1(fn_die) == DW_TAG_subprogram &&
	    !FUNC0(fn_die, &addr) &&
	    addr == ad->addr) {
		FUNC2(ad->die_mem, fn_die, sizeof(Dwarf_Die));
		return DWARF_CB_ABORT;
	}
	return DWARF_CB_OK;
}