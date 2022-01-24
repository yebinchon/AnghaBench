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
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 scalar_t__ EOPNOTSUPP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct ocfs2_cached_dealloc_ctxt*) ; 
 scalar_t__ FUNC8 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_cached_dealloc_ctxt*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*,struct buffer_head*,scalar_t__,struct inode*,struct buffer_head*,scalar_t__,scalar_t__,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC14 (struct inode*,struct buffer_head*,scalar_t__) ; 

loff_t FUNC15(struct inode *s_inode,
				  struct buffer_head *s_bh,
				  loff_t pos_in,
				  struct inode *t_inode,
				  struct buffer_head *t_bh,
				  loff_t pos_out,
				  loff_t len)
{
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_super *osb;
	struct ocfs2_dinode *dis;
	struct ocfs2_dinode *dit;
	loff_t ret;

	osb = FUNC1(s_inode->i_sb);
	dis = (struct ocfs2_dinode *)s_bh->b_data;
	dit = (struct ocfs2_dinode *)t_bh->b_data;
	FUNC9(&dealloc);

	/*
	 * If we're reflinking the entire file and the source is inline
	 * data, just copy the contents.
	 */
	if (pos_in == pos_out && pos_in == 0 && len == FUNC2(s_inode) &&
	    FUNC2(t_inode) <= len &&
	    (FUNC0(s_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)) {
		ret = FUNC8(s_inode, s_bh, t_inode, t_bh);
		if (ret)
			FUNC4(ret);
		goto out;
	}

	/*
	 * If both inodes belong to two different refcount groups then
	 * forget it because we don't know how (or want) to go merging
	 * refcount trees.
	 */
	ret = -EOPNOTSUPP;
	if (FUNC10(s_inode) &&
	    FUNC10(t_inode) &&
	    FUNC3(dis->i_refcount_loc) !=
	    FUNC3(dit->i_refcount_loc))
		goto out;

	/* Neither inode has a refcount tree.  Add one to s_inode. */
	if (!FUNC10(s_inode) &&
	    !FUNC10(t_inode)) {
		ret = FUNC6(s_inode, s_bh);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

	/* Ensure that both inodes end up with the same refcount tree. */
	if (!FUNC10(s_inode)) {
		ret = FUNC14(s_inode, s_bh,
					      FUNC3(dit->i_refcount_loc));
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}
	if (!FUNC10(t_inode)) {
		ret = FUNC14(t_inode, t_bh,
					      FUNC3(dis->i_refcount_loc));
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

	/* Turn off inline data in the dest file. */
	if (FUNC0(t_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		ret = FUNC5(t_inode, t_bh);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

	/* Actually remap extents now. */
	ret = FUNC11(s_inode, s_bh, pos_in, t_inode, t_bh,
					 pos_out, len, &dealloc);
	if (ret < 0) {
		FUNC4(ret);
		goto out;
	}

out:
	if (FUNC7(&dealloc)) {
		FUNC13(osb, 1);
		FUNC12(osb, &dealloc);
	}

	return ret;
}