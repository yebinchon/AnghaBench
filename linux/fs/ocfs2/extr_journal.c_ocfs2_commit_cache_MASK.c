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
struct ocfs2_super {struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_checkpointed; int /*<<< orphan*/  j_trans_id; int /*<<< orphan*/  j_trans_barrier; int /*<<< orphan*/  j_num_trans; int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_journal*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ocfs2_super *osb)
{
	int status = 0;
	unsigned int flushed;
	struct ocfs2_journal *journal = NULL;

	journal = osb->journal;

	/* Flush all pending commits and checkpoint the journal. */
	FUNC2(&journal->j_trans_barrier);

	flushed = FUNC0(&journal->j_num_trans);
	FUNC9(flushed);
	if (flushed == 0) {
		FUNC11(&journal->j_trans_barrier);
		goto finally;
	}

	FUNC4(journal->j_journal);
	status = FUNC3(journal->j_journal);
	FUNC5(journal->j_journal);
	if (status < 0) {
		FUNC11(&journal->j_trans_barrier);
		FUNC6(status);
		goto finally;
	}

	FUNC7(journal);

	flushed = FUNC0(&journal->j_num_trans);
	FUNC1(&journal->j_num_trans, 0);
	FUNC11(&journal->j_trans_barrier);

	FUNC10(journal->j_trans_id, flushed);

	FUNC8(osb);
	FUNC12(&journal->j_checkpointed);
finally:
	return status;
}