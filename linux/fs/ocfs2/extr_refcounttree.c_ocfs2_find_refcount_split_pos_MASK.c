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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_refcount_list {int /*<<< orphan*/ * rl_recs; int /*<<< orphan*/  rl_used; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_refcount_list *rl,
					 u32 *split_pos, int *split_index)
{
	int num_used = FUNC0(rl->rl_used);
	int delta, middle = num_used / 2;

	for (delta = 0; delta < middle; delta++) {
		/* Let's check delta earlier than middle */
		if (FUNC2(
					&rl->rl_recs[middle - delta - 1],
					&rl->rl_recs[middle - delta])) {
			*split_index = middle - delta;
			break;
		}

		/* For even counts, don't walk off the end */
		if ((middle + delta + 1) == num_used)
			continue;

		/* Now try delta past middle */
		if (FUNC2(
					&rl->rl_recs[middle + delta],
					&rl->rl_recs[middle + delta + 1])) {
			*split_index = middle + delta + 1;
			break;
		}
	}

	if (delta >= middle)
		return -ENOSPC;

	*split_pos = FUNC1(&rl->rl_recs[*split_index]);
	return 0;
}