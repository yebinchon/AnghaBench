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
struct reiserfs_transaction_handle {int t_refcount; int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct reiserfs_journal {scalar_t__ j_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int COMMIT_NOW ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct reiserfs_journal* FUNC2 (struct super_block*) ; 
 int WAIT ; 
 int FUNC3 (struct reiserfs_transaction_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct reiserfs_transaction_handle *th)
{
	struct super_block *sb = th->t_super;
	struct reiserfs_journal *journal = FUNC2(sb);

	FUNC0(!th->t_trans_id);
	/* you can sync while nested, very, very bad */
	FUNC0(th->t_refcount > 1);
	if (journal->j_len == 0) {
		FUNC5(sb, FUNC1(sb),
					     1);
		FUNC4(th, FUNC1(sb));
	}
	return FUNC3(th, COMMIT_NOW | WAIT);
}