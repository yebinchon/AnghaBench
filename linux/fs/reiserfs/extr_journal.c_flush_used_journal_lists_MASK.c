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
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct reiserfs_journal_list {scalar_t__ j_trans_id; TYPE_1__ j_list; int /*<<< orphan*/  j_state; int /*<<< orphan*/  j_nonzerolen; int /*<<< orphan*/  j_commit_left; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_journal_list; } ;

/* Variables and functions */
 struct reiserfs_journal_list* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIST_TOUCHED ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct reiserfs_journal_list*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_journal_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct reiserfs_journal_list*,struct reiserfs_journal_list**,unsigned int*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct reiserfs_journal_list*) ; 
 scalar_t__ FUNC7 (struct super_block*) ; 

__attribute__((used)) static int FUNC8(struct super_block *s,
				    struct reiserfs_journal_list *jl)
{
	unsigned long len = 0;
	unsigned long cur_len;
	int i;
	int limit = 256;
	struct reiserfs_journal_list *tjl;
	struct reiserfs_journal_list *flush_jl;
	unsigned int trans_id;
	struct reiserfs_journal *journal = FUNC1(s);

	flush_jl = tjl = jl;

	/* in data logging mode, try harder to flush a lot of blocks */
	if (FUNC7(s))
		limit = 1024;
	/* flush for 256 transactions or limit blocks, whichever comes first */
	for (i = 0; i < 256 && len < limit; i++) {
		if (FUNC2(&tjl->j_commit_left) ||
		    tjl->j_trans_id < jl->j_trans_id) {
			break;
		}
		cur_len = FUNC2(&tjl->j_nonzerolen);
		if (cur_len > 0) {
			tjl->j_state &= ~LIST_TOUCHED;
		}
		len += cur_len;
		flush_jl = tjl;
		if (tjl->j_list.next == &journal->j_journal_list)
			break;
		tjl = FUNC0(tjl->j_list.next);
	}
	FUNC4(jl);
	FUNC4(flush_jl);

	/*
	 * try to find a group of blocks we can flush across all the
	 * transactions, but only bother if we've actually spanned
	 * across multiple lists
	 */
	if (flush_jl != jl)
		FUNC5(s, jl, &tjl, &trans_id, len, i);

	FUNC3(s, flush_jl, 1);
	FUNC6(s, flush_jl);
	FUNC6(s, jl);
	return 0;
}