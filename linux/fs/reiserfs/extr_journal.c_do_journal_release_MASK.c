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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_work; } ;
typedef  int /*<<< orphan*/  myth ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FLUSH_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct reiserfs_journal* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_transaction_handle*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_transaction_handle*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 scalar_t__ FUNC11 (struct reiserfs_journal*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 

__attribute__((used)) static int FUNC16(struct reiserfs_transaction_handle *th,
			      struct super_block *sb, int error)
{
	struct reiserfs_transaction_handle myth;
	struct reiserfs_journal *journal = FUNC2(sb);

	/*
	 * we only want to flush out transactions if we were
	 * called with error == 0
	 */
	if (!error && !FUNC15(sb)) {
		/* end the current trans */
		FUNC0(!th->t_trans_id);
		FUNC4(th, FLUSH_ALL);

		/*
		 * make sure something gets logged to force
		 * our way into the flush code
		 */
		if (!FUNC6(&myth, sb)) {
			FUNC12(sb,
						     FUNC1(sb),
						     1);
			FUNC8(&myth, FUNC1(sb));
			FUNC4(&myth, FLUSH_ALL);
		}
	}

	/* this also catches errors during the do_journal_end above */
	if (!error && FUNC11(journal)) {
		FUNC9(&myth, 0, sizeof(myth));
		if (!FUNC7(&myth, sb)) {
			FUNC12(sb,
						     FUNC1(sb),
						     1);
			FUNC8(&myth, FUNC1(sb));
			FUNC4(&myth, FLUSH_ALL);
		}
	}


	/*
	 * We must release the write lock here because
	 * the workqueue job (flush_async_commit) needs this lock
	 */
	FUNC14(sb);

	/*
	 * Cancel flushing of old commits. Note that neither of these works
	 * will be requeued because superblock is being shutdown and doesn't
	 * have SB_ACTIVE set.
	 */
	FUNC10(sb);
	/* wait for all commits to finish */
	FUNC3(&FUNC2(sb)->j_work);

	FUNC5(sb);

	FUNC13(sb);

	return 0;
}