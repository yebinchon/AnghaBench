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
typedef  scalar_t__ time64_t ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_journal {scalar_t__ j_trans_start_time; scalar_t__ j_len; scalar_t__ j_max_trans_age; int /*<<< orphan*/  j_wcount; int /*<<< orphan*/  j_journal_list; } ;

/* Variables and functions */
 int COMMIT_NOW ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 int WAIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct super_block *sb)
{
	time64_t now;
	struct reiserfs_transaction_handle th;
	struct reiserfs_journal *journal = FUNC1(sb);

	now = FUNC6();
	/*
	 * safety check so we don't flush while we are replaying the log during
	 * mount
	 */
	if (FUNC7(&journal->j_journal_list))
		return;

	/*
	 * check the current transaction.  If there are no writers, and it is
	 * too old, finish it, and force the commit blocks to disk
	 */
	if (FUNC2(&journal->j_wcount) <= 0 &&
	    journal->j_trans_start_time > 0 &&
	    journal->j_len > 0 &&
	    (now - journal->j_trans_start_time) > journal->j_max_trans_age) {
		if (!FUNC4(&th, sb)) {
			FUNC8(sb,
						     FUNC0(sb),
						     1);
			FUNC5(&th, FUNC0(sb));

			/*
			 * we're only being called from kreiserfsd, it makes
			 * no sense to do an async commit so that kreiserfsd
			 * can do it later
			 */
			FUNC3(&th, COMMIT_NOW | WAIT);
		}
	}
}