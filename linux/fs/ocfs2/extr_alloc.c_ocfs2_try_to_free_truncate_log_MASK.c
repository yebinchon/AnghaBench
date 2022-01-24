#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct ocfs2_super {unsigned int truncated_clusters; TYPE_1__* journal; int /*<<< orphan*/  osb_tl_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ocfs2_super*) ; 

int FUNC6(struct ocfs2_super *osb,
					unsigned int needed)
{
	tid_t target;
	int ret = 0;
	unsigned int truncated_clusters;

	FUNC0(osb->osb_tl_inode);
	truncated_clusters = osb->truncated_clusters;
	FUNC1(osb->osb_tl_inode);

	/*
	 * Check whether we can succeed in allocating if we free
	 * the truncate log.
	 */
	if (truncated_clusters < needed)
		goto out;

	ret = FUNC5(osb);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	if (FUNC2(osb->journal->j_journal, &target)) {
		FUNC3(osb->journal->j_journal, target);
		ret = 1;
	}
out:
	return ret;
}