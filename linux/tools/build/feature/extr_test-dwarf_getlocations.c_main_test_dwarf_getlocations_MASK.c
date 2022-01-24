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
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  Dwarf_Op ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 

int FUNC1(void)
{
	Dwarf_Addr base, start, end;
	Dwarf_Attribute attr;
	Dwarf_Op *op;
        size_t nops;
	ptrdiff_t offset = 0;
        return (int)FUNC0(&attr, offset, &base, &start, &end, &op, &nops);
}