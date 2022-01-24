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
struct ocfs2_super {int /*<<< orphan*/  checkpoint_event; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_num_trans; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_KTHREAD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ocfs2_super*) ; 
 scalar_t__ FUNC5 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void *arg)
{
	int status;
	struct ocfs2_super *osb = arg;
	struct ocfs2_journal *journal = osb->journal;

	/* we can trust j_num_trans here because _should_stop() is only set in
	 * shutdown and nobody other than ourselves should be able to start
	 * transactions.  committing on shutdown might take a few iterations
	 * as final transactions put deleted inodes on the list */
	while (!(FUNC1() &&
		 FUNC0(&journal->j_num_trans) == 0)) {

		FUNC6(osb->checkpoint_event,
					 FUNC0(&journal->j_num_trans)
					 || FUNC1());

		status = FUNC4(osb);
		if (status < 0) {
			static unsigned long abort_warn_time;

			/* Warn about this once per minute */
			if (FUNC5(&abort_warn_time, 60*HZ))
				FUNC2(ML_ERROR, "status = %d, journal is "
						"already aborted.\n", status);
			/*
			 * After ocfs2_commit_cache() fails, j_num_trans has a
			 * non-zero value.  Sleep here to avoid a busy-wait
			 * loop.
			 */
			FUNC3(1000);
		}

		if (FUNC1() && FUNC0(&journal->j_num_trans)){
			FUNC2(ML_KTHREAD,
			     "commit_thread: %u transactions pending on "
			     "shutdown\n",
			     FUNC0(&journal->j_num_trans));
		}
	}

	return 0;
}