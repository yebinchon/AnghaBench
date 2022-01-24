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
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* prev; struct reiserfs_journal_cnode* next; struct buffer_head* bh; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_len_alloc; int /*<<< orphan*/  j_len; int /*<<< orphan*/  j_hash_table; struct reiserfs_journal_cnode* j_last; struct reiserfs_journal_cnode* j_first; } ;
struct buffer_head {int /*<<< orphan*/  b_count; int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;

/* Variables and functions */
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct reiserfs_journal_cnode*) ; 
 struct reiserfs_journal_cnode* FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb,
				   b_blocknr_t blocknr, int already_cleaned)
{
	struct buffer_head *bh;
	struct reiserfs_journal_cnode *cn;
	struct reiserfs_journal *journal = FUNC0(sb);
	int ret = 0;

	cn = FUNC7(sb, journal->j_hash_table, blocknr);
	if (!cn || !cn->bh) {
		return ret;
	}
	bh = cn->bh;
	if (cn->prev) {
		cn->prev->next = cn->next;
	}
	if (cn->next) {
		cn->next->prev = cn->prev;
	}
	if (cn == journal->j_first) {
		journal->j_first = cn->next;
	}
	if (cn == journal->j_last) {
		journal->j_last = cn->prev;
	}
	FUNC10(sb, journal->j_hash_table, NULL,
			    bh->b_blocknr, 0);
	FUNC5(bh);	/* don't log this one */

	if (!already_cleaned) {
		FUNC3(bh);
		FUNC2(bh);
		FUNC4(bh);
		FUNC8(bh);
		if (FUNC1(&bh->b_count) < 0) {
			FUNC9(sb, "journal-1752",
					 "b_count < 0");
		}
		ret = 1;
	}
	journal->j_len--;
	journal->j_len_alloc--;
	FUNC6(sb, cn);
	return ret;
}