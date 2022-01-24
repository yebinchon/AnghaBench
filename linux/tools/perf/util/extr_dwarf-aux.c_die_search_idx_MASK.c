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
typedef  int /*<<< orphan*/  Dwarf_Lines ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(Dwarf_Lines *lines, unsigned long nr_lines,
			   Dwarf_Addr addr, unsigned long *idx)
{
	unsigned long i;
	Dwarf_Addr tmp;

	for (i = 0; i < nr_lines; i++) {
		if (FUNC0(FUNC1(lines, i), &tmp))
			return false;

		if (tmp == addr) {
			*idx = i;
			return true;
		}
	}
	return false;
}