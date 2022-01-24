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
struct ocfs2_super {int node_num; int /*<<< orphan*/  journal; } ;
struct ocfs2_dinode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  ORPHAN_NEED_TRUNCATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ocfs2_super*,int,struct ocfs2_dinode**) ; 
 int FUNC3 (struct ocfs2_super*,int,struct ocfs2_dinode**) ; 
 int FUNC4 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct ocfs2_dinode*,struct ocfs2_dinode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ocfs2_super*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_super *osb,
			      int node_num, int slot_num)
{
	int status = 0;
	struct ocfs2_dinode *la_copy = NULL;
	struct ocfs2_dinode *tl_copy = NULL;

	FUNC7(node_num, slot_num, osb->node_num);

	/* Should not ever be called to recover ourselves -- in that
	 * case we should've called ocfs2_journal_load instead. */
	FUNC0(osb->node_num == node_num);

	status = FUNC6(osb, node_num, slot_num);
	if (status < 0) {
		if (status == -EBUSY) {
			FUNC8(slot_num, node_num);
			status = 0;
			goto done;
		}
		FUNC1(status);
		goto done;
	}

	/* Stamp a clean local alloc file AFTER recovering the journal... */
	status = FUNC2(osb, slot_num, &la_copy);
	if (status < 0) {
		FUNC1(status);
		goto done;
	}

	/* An error from begin_truncate_log_recovery is not
	 * serious enough to warrant halting the rest of
	 * recovery. */
	status = FUNC3(osb, slot_num, &tl_copy);
	if (status < 0)
		FUNC1(status);

	/* Likewise, this would be a strange but ultimately not so
	 * harmful place to get an error... */
	status = FUNC4(osb, slot_num);
	if (status < 0)
		FUNC1(status);

	/* This will kfree the memory pointed to by la_copy and tl_copy */
	FUNC5(osb->journal, slot_num, la_copy,
					tl_copy, NULL, ORPHAN_NEED_TRUNCATE);

	status = 0;
done:

	return status;
}