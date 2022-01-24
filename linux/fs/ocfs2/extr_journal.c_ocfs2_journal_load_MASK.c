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
struct ocfs2_super {int /*<<< orphan*/ * commit_task; int /*<<< orphan*/  uuid_str; int /*<<< orphan*/  slot_num; int /*<<< orphan*/  sb; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_journal; struct ocfs2_super* j_osb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct ocfs2_super*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_commit_thread ; 
 int FUNC8 (struct ocfs2_super*,int,int) ; 

int FUNC9(struct ocfs2_journal *journal, int local, int replayed)
{
	int status = 0;
	struct ocfs2_super *osb;

	FUNC0(!journal);

	osb = journal->j_osb;

	status = FUNC3(journal->j_journal);
	if (status < 0) {
		FUNC5(ML_ERROR, "Failed to load journal!\n");
		goto done;
	}

	FUNC7(osb->sb, journal->j_journal, osb->slot_num);

	status = FUNC8(osb, 1, replayed);
	if (status < 0) {
		FUNC6(status);
		goto done;
	}

	/* Launch the commit thread */
	if (!local) {
		osb->commit_task = FUNC4(ocfs2_commit_thread, osb,
				"ocfs2cmt-%s", osb->uuid_str);
		if (FUNC1(osb->commit_task)) {
			status = FUNC2(osb->commit_task);
			osb->commit_task = NULL;
			FUNC5(ML_ERROR, "unable to launch ocfs2commit thread, "
			     "error=%d", status);
			goto done;
		}
	} else
		osb->commit_task = NULL;

done:
	return status;
}