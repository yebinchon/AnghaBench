#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {int border; int large_file_size; int preallocmin; int preallocsize; } ;
struct TYPE_4__ {TYPE_1__ s_alloc_options; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct super_block*) ; 
 int _ALLOC_dirid_groups ; 
 int _ALLOC_packing_groups ; 
 int _ALLOC_skip_busy ; 
 int /*<<< orphan*/  concentrating_formatted_nodes ; 
 int /*<<< orphan*/  dirid_groups ; 
 int /*<<< orphan*/  displace_based_on_dirid ; 
 int /*<<< orphan*/  displacing_large_files ; 
 int /*<<< orphan*/  displacing_new_packing_localities ; 
 int /*<<< orphan*/  hashed_formatted_nodes ; 
 int /*<<< orphan*/  hundredth_slices ; 
 int /*<<< orphan*/  new_hashed_relocation ; 
 int /*<<< orphan*/  oid_groups ; 
 int /*<<< orphan*/  old_hashed_relocation ; 
 int /*<<< orphan*/  old_way ; 
 int /*<<< orphan*/  packing_groups ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  skip_busy ; 

void FUNC6(struct seq_file *seq, struct super_block *s)
{
	int first = 1;

	if (FUNC1(s) == ((1 << _ALLOC_skip_busy) |
		(1 << _ALLOC_dirid_groups) | (1 << _ALLOC_packing_groups)))
		return;

	FUNC5(seq, ",alloc=");

	if (FUNC2(concentrating_formatted_nodes, s)) {
		FUNC3(seq, &first);
		if (FUNC0(s)->s_alloc_options.border != 10) {
			FUNC4(seq, "concentrating_formatted_nodes=%d",
				100 / FUNC0(s)->s_alloc_options.border);
		} else
			FUNC5(seq, "concentrating_formatted_nodes");
	}
	if (FUNC2(displacing_large_files, s)) {
		FUNC3(seq, &first);
		if (FUNC0(s)->s_alloc_options.large_file_size != 16) {
			FUNC4(seq, "displacing_large_files=%lu",
			    FUNC0(s)->s_alloc_options.large_file_size);
		} else
			FUNC5(seq, "displacing_large_files");
	}
	if (FUNC2(displacing_new_packing_localities, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "displacing_new_packing_localities");
	}
	if (FUNC2(old_hashed_relocation, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "old_hashed_relocation");
	}
	if (FUNC2(new_hashed_relocation, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "new_hashed_relocation");
	}
	if (FUNC2(dirid_groups, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "dirid_groups");
	}
	if (FUNC2(oid_groups, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "oid_groups");
	}
	if (FUNC2(packing_groups, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "packing_groups");
	}
	if (FUNC2(hashed_formatted_nodes, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "hashed_formatted_nodes");
	}
	if (FUNC2(skip_busy, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "skip_busy");
	}
	if (FUNC2(hundredth_slices, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "hundredth_slices");
	}
	if (FUNC2(old_way, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "old_way");
	}
	if (FUNC2(displace_based_on_dirid, s)) {
		FUNC3(seq, &first);
		FUNC5(seq, "displace_based_on_dirid");
	}
	if (FUNC0(s)->s_alloc_options.preallocmin != 0) {
		FUNC3(seq, &first);
		FUNC4(seq, "preallocmin=%d",
				FUNC0(s)->s_alloc_options.preallocmin);
	}
	if (FUNC0(s)->s_alloc_options.preallocsize != 17) {
		FUNC3(seq, &first);
		FUNC4(seq, "preallocsize=%d",
				FUNC0(s)->s_alloc_options.preallocsize);
	}
}