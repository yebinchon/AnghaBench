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
struct ocfs2_super {int /*<<< orphan*/ * local_alloc_copy; int /*<<< orphan*/  slot_num; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ORPHAN_NEED_TRUNCATE ; 
 int /*<<< orphan*/  REPLAY_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_super*) ; 
 scalar_t__ FUNC1 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_journal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

void FUNC6(struct ocfs2_super *osb)
{
	struct ocfs2_journal *journal = osb->journal;

	if (FUNC1(osb))
		return;

	/* No need to queue up our truncate_log as regular cleanup will catch
	 * that */
	FUNC2(journal, osb->slot_num,
					osb->local_alloc_copy, NULL, NULL,
					ORPHAN_NEED_TRUNCATE);
	FUNC5(osb, 0);

	osb->local_alloc_copy = NULL;

	/* queue to recover orphan slots for all offline slots */
	FUNC4(osb, REPLAY_NEEDED);
	FUNC3(osb, ORPHAN_NEED_TRUNCATE);
	FUNC0(osb);
}