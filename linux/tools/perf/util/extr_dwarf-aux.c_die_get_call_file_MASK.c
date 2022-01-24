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
typedef  int /*<<< orphan*/  Dwarf_Files ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

const char *FUNC4(Dwarf_Die *in_die)
{
	Dwarf_Die cu_die;
	Dwarf_Files *files;
	int idx;

	idx = FUNC0(in_die);
	if (idx < 0 || !FUNC1(in_die, &cu_die, NULL, NULL) ||
	    FUNC3(&cu_die, &files, NULL) != 0)
		return NULL;

	return FUNC2(files, idx, NULL, NULL);
}