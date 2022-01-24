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
struct reiserfs_journal_list {struct reiserfs_journal_cnode* j_realblock; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* next; scalar_t__ state; scalar_t__ bh; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_list_hash_table; } ;

/* Variables and functions */
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct reiserfs_journal_cnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,char*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,struct reiserfs_journal_list*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb,
					 struct reiserfs_journal_list *jl,
					 int debug)
{
	struct reiserfs_journal *journal = FUNC0(sb);
	struct reiserfs_journal_cnode *cn, *last;
	cn = jl->j_realblock;

	/*
	 * which is better, to lock once around the whole loop, or
	 * to lock for each call to remove_journal_hash?
	 */
	while (cn) {
		if (cn->blocknr != 0) {
			if (debug) {
				FUNC2(sb, "reiserfs-2201",
						 "block %u, bh is %d, state %ld",
						 cn->blocknr, cn->bh ? 1 : 0,
						 cn->state);
			}
			cn->state = 0;
			FUNC3(sb, journal->j_list_hash_table,
					    jl, cn->blocknr, 1);
		}
		last = cn;
		cn = cn->next;
		FUNC1(sb, last);
	}
	jl->j_realblock = NULL;
}