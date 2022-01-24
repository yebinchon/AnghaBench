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
typedef  int /*<<< orphan*/  insn_byte_t ;
typedef  int const insn_attr_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int const) ; 
 int FUNC2 (int const) ; 
 int*** inat_group_tables ; 
 scalar_t__ FUNC3 (int const) ; 

insn_attr_t FUNC4(insn_byte_t modrm, int lpfx_id,
				     insn_attr_t grp_attr)
{
	const insn_attr_t *table;
	int n;

	n = FUNC2(grp_attr);

	table = inat_group_tables[n][0];
	if (!table)
		return FUNC1(grp_attr);
	if (FUNC3(table[FUNC0(modrm)]) && lpfx_id) {
		table = inat_group_tables[n][lpfx_id];
		if (!table)
			return FUNC1(grp_attr);
	}
	return table[FUNC0(modrm)] |
	       FUNC1(grp_attr);
}