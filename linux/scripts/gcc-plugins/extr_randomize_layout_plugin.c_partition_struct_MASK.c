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
typedef  scalar_t__ tree ;
struct partition_group {scalar_t__ tree_start; unsigned long start; unsigned long length; } ;

/* Variables and functions */
 unsigned long INT_MAX ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct partition_group*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(tree *fields, unsigned long length, struct partition_group *size_groups, unsigned long *num_groups)
{
	unsigned long i;
	unsigned long accum_size = 0;
	unsigned long accum_length = 0;
	unsigned long group_idx = 0;

	FUNC1(length < INT_MAX);

	FUNC3(size_groups, 0, sizeof(struct partition_group) * length);

	for (i = 0; i < length; i++) {
		if (size_groups[group_idx].tree_start == NULL_TREE) {
			size_groups[group_idx].tree_start = fields[i];
			size_groups[group_idx].start = i;
			accum_length = 0;
			accum_size = 0;
		}
		accum_size += (unsigned long)FUNC2(FUNC0(fields[i]));
		accum_length++;
		if (accum_size >= 64) {
			size_groups[group_idx].length = accum_length;
			accum_length = 0;
			group_idx++;
		}
	}

	if (size_groups[group_idx].tree_start != NULL_TREE &&
	    !size_groups[group_idx].length) {
		size_groups[group_idx].length = accum_length;
		group_idx++;
	}

	*num_groups = group_idx;
}