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
struct ocfs2_super {int /*<<< orphan*/  osb_lock; struct ocfs2_refcount_tree* osb_ref_tree_lru; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; int /*<<< orphan*/  rf_generation; int /*<<< orphan*/  rf_blkno; } ;
struct ocfs2_refcount_block {int /*<<< orphan*/  rf_generation; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_refcount_tree*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ocfs2_refcount_tree* FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 struct ocfs2_refcount_tree* FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_refcount_tree*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,struct ocfs2_refcount_tree*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ocfs2_super *osb, u64 rf_blkno,
				   struct ocfs2_refcount_tree **ret_tree)
{
	int ret = 0;
	struct ocfs2_refcount_tree *tree, *new = NULL;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_block *ref_rb;

	FUNC12(&osb->osb_lock);
	if (osb->osb_ref_tree_lru &&
	    osb->osb_ref_tree_lru->rf_blkno == rf_blkno)
		tree = osb->osb_ref_tree_lru;
	else
		tree = FUNC5(osb, rf_blkno);
	if (tree)
		goto out;

	FUNC13(&osb->osb_lock);

	new = FUNC4(osb, rf_blkno);
	if (!new) {
		ret = -ENOMEM;
		FUNC3(ret);
		return ret;
	}
	/*
	 * We need the generation to create the refcount tree lock and since
	 * it isn't changed during the tree modification, we are safe here to
	 * read without protection.
	 * We also have to purge the cache after we create the lock since the
	 * refcount block may have the stale data. It can only be trusted when
	 * we hold the refcount lock.
	 */
	ret = FUNC11(&new->rf_ci, rf_blkno, &ref_root_bh);
	if (ret) {
		FUNC3(ret);
		FUNC9(&new->rf_ci);
		FUNC1(new);
		return ret;
	}

	ref_rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
	new->rf_generation = FUNC2(ref_rb->rf_generation);
	FUNC7(osb, new, rf_blkno,
				      new->rf_generation);
	FUNC10(&new->rf_ci);

	FUNC12(&osb->osb_lock);
	tree = FUNC5(osb, rf_blkno);
	if (tree)
		goto out;

	FUNC8(osb, new);

	tree = new;
	new = NULL;

out:
	*ret_tree = tree;

	osb->osb_ref_tree_lru = tree;

	FUNC13(&osb->osb_lock);

	if (new)
		FUNC6(new);

	FUNC0(ref_root_bh);
	return ret;
}