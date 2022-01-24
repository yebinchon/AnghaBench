#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct reiserfs_list_bitmap {int dummy; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* hnext; struct buffer_head* bh; TYPE_2__* jlist; int /*<<< orphan*/  state; struct super_block* sb; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_list_hash_table; TYPE_1__* j_current_jl; int /*<<< orphan*/  j_hash_table; } ;
struct buffer_head {int /*<<< orphan*/  b_count; } ;
typedef  scalar_t__ b_blocknr_t ;
struct TYPE_4__ {int /*<<< orphan*/  j_nonzerolen; } ;
struct TYPE_3__ {struct reiserfs_list_bitmap* j_list_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FREED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 struct reiserfs_journal_cnode* FUNC11 (struct super_block*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int FUNC17 (struct super_block*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,scalar_t__,struct reiserfs_list_bitmap*) ; 

int FUNC20(struct reiserfs_transaction_handle *th,
		       struct super_block *sb, b_blocknr_t blocknr)
{
	struct reiserfs_journal *journal = FUNC1(sb);
	struct reiserfs_journal_cnode *cn = NULL;
	struct buffer_head *bh = NULL;
	struct reiserfs_list_bitmap *jb = NULL;
	int cleaned = 0;
	FUNC0(!th->t_trans_id);

	cn = FUNC11(sb, journal->j_hash_table, blocknr);
	if (cn && cn->bh) {
		bh = cn->bh;
		FUNC10(bh);
	}
	/* if it is journal new, we just remove it from this transaction */
	if (bh && FUNC4(bh)) {
		FUNC7(bh);
		FUNC9(bh);
		FUNC13(bh);
		cleaned = FUNC17(sb, blocknr, cleaned);
	} else {
		/*
		 * set the bit for this block in the journal bitmap
		 * for this transaction
		 */
		jb = journal->j_current_jl->j_list_bitmap;
		if (!jb) {
			FUNC14(sb, "journal-1702",
				       "journal_list_bitmap is NULL");
		}
		FUNC19(sb, blocknr, jb);

		/* Note, the entire while loop is not allowed to schedule.  */

		if (bh) {
			FUNC9(bh);
			FUNC13(bh);
		}
		cleaned = FUNC17(sb, blocknr, cleaned);

		/*
		 * find all older transactions with this block,
		 * make sure they don't try to write it out
		 */
		cn = FUNC11(sb, journal->j_list_hash_table,
					  blocknr);
		while (cn) {
			if (sb == cn->sb && blocknr == cn->blocknr) {
				FUNC18(BLOCK_FREED, &cn->state);
				if (cn->bh) {
					/*
					 * remove_from_transaction will brelse
					 * the buffer if it was in the current
					 * trans
					 */
					if (!cleaned) {
						FUNC6(cn->
									   bh);
						FUNC5(cn->bh);
						FUNC8(cn->
									  bh);
						cleaned = 1;
						FUNC12(cn->bh);
						if (FUNC3
						    (&cn->bh->b_count) < 0) {
							FUNC15(sb,
								 "journal-2138",
								 "cn->bh->b_count < 0");
						}
					}
					/*
					 * since we are clearing the bh,
					 * we MUST dec nonzerolen
					 */
					if (cn->jlist) {
						FUNC2(&cn->jlist->
							   j_nonzerolen);
					}
					cn->bh = NULL;
				}
			}
			cn = cn->hnext;
		}
	}

	if (bh)
		FUNC16(bh); /* get_hash grabs the buffer */
	return 0;
}