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
struct ocfs2_super {TYPE_1__* journal; int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ j_state; int /*<<< orphan*/  j_num_trans; int /*<<< orphan*/  j_trans_barrier; int /*<<< orphan*/ * j_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ OCFS2_JOURNAL_FREE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

handle_t *FUNC16(struct ocfs2_super *osb, int max_buffs)
{
	journal_t *journal = osb->journal->j_journal;
	handle_t *handle;

	FUNC0(!osb || !osb->journal->j_journal);

	if (FUNC11(osb))
		return FUNC1(-EROFS);

	FUNC0(osb->journal->j_state == OCFS2_JOURNAL_FREE);
	FUNC0(max_buffs <= 0);

	/* Nested transaction? Just return the handle... */
	if (FUNC8())
		return FUNC7(journal, max_buffs);

	FUNC14(osb->sb);

	FUNC5(&osb->journal->j_trans_barrier);

	handle = FUNC7(journal, max_buffs);
	if (FUNC2(handle)) {
		FUNC15(&osb->journal->j_trans_barrier);
		FUNC13(osb->sb);

		FUNC9(FUNC3(handle));

		if (FUNC6(journal)) {
			FUNC10(osb->sb, "Detected aborted journal\n");
			handle = FUNC1(-EROFS);
		}
	} else {
		if (!FUNC12(osb))
			FUNC4(&(osb->journal->j_num_trans));
	}

	return handle;
}