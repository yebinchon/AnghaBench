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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_extent_list {int /*<<< orphan*/ * l_recs; int /*<<< orphan*/  l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_last_eb_blk; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
				  struct ocfs2_dinode *di)
{
	int ret, next_free;
	u64 last_eb_blk = FUNC3(di->i_last_eb_blk);
	struct buffer_head *eb_bh = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list *el;

	ret = FUNC7(FUNC0(inode), last_eb_blk, &eb_bh);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	eb = (struct ocfs2_extent_block *) eb_bh->b_data;
	el = &eb->h_list;

	if (el->l_tree_depth) {
		FUNC5(inode->i_sb,
			    "Inode %lu has non zero tree depth in leaf block %llu\n",
			    inode->i_ino,
			    (unsigned long long)eb_bh->b_blocknr);
		ret = -EROFS;
		goto out;
	}

	next_free = FUNC2(el->l_next_free_rec);

	if (next_free == 0 ||
	    (next_free == 1 && FUNC6(&el->l_recs[0])))
		ret = 1;

out:
	FUNC1(eb_bh);
	return ret;
}