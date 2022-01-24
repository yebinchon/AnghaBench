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
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC6 (struct inode*,struct inode*,struct buffer_head*,int /*<<< orphan*/ *,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC7 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int) ; 
 int FUNC12 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 

__attribute__((used)) static int FUNC14(struct inode *s_inode,
				     struct buffer_head *s_bh,
				     struct inode *t_inode,
				     struct buffer_head *t_bh,
				     bool preserve)
{
	int ret;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_super *osb = FUNC1(s_inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)s_bh->b_data;
	struct ocfs2_refcount_tree *ref_tree;

	FUNC8(&dealloc);

	ret = FUNC12(t_inode, t_bh,
				      FUNC3(di->i_refcount_loc));
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	if (FUNC0(s_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		ret = FUNC7(s_inode, s_bh,
						  t_inode, t_bh);
		if (ret)
			FUNC4(ret);
		goto out;
	}

	ret = FUNC9(osb, FUNC3(di->i_refcount_loc),
				       1, &ref_tree, &ref_root_bh);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	ret = FUNC6(s_inode, t_inode, t_bh,
					  &ref_tree->rf_ci, ref_root_bh,
					  &dealloc);
	if (ret) {
		FUNC4(ret);
		goto out_unlock_refcount;
	}

out_unlock_refcount:
	FUNC13(osb, ref_tree, 1);
	FUNC2(ref_root_bh);
out:
	if (FUNC5(&dealloc)) {
		FUNC11(osb, 1);
		FUNC10(osb, &dealloc);
	}

	return ret;
}