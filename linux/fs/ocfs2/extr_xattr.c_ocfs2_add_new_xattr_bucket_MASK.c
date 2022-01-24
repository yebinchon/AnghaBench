#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_xattr_tree_root {struct ocfs2_extent_list xt_list; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct TYPE_4__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  xh_num_buckets; TYPE_2__* xh_entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  xe_name_hash; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocfs2_xattr_bucket*) ; 
 TYPE_3__* FUNC2 (struct ocfs2_xattr_bucket*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct inode*,struct buffer_head*,struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*,int*,int,int*,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_bucket*,scalar_t__,int) ; 
 int FUNC8 (struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_xattr_bucket*) ; 
 struct ocfs2_xattr_bucket* FUNC10 (struct inode*) ; 
 int FUNC11 (struct ocfs2_super*) ; 
 int FUNC12 (struct inode*,int,int /*<<< orphan*/ *,int*,int*,struct ocfs2_extent_list*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long long) ; 

__attribute__((used)) static int FUNC14(struct inode *inode,
				      struct buffer_head *xb_bh,
				      struct ocfs2_xattr_bucket *target,
				      struct ocfs2_xattr_set_ctxt *ctxt)
{
	struct ocfs2_xattr_block *xb =
			(struct ocfs2_xattr_block *)xb_bh->b_data;
	struct ocfs2_xattr_tree_root *xb_root = &xb->xb_attrs.xb_root;
	struct ocfs2_extent_list *el = &xb_root->xt_list;
	u32 name_hash =
		FUNC4(FUNC2(target)->xh_entries[0].xe_name_hash);
	struct ocfs2_super *osb = FUNC0(inode->i_sb);
	int ret, num_buckets, extend = 1;
	u64 p_blkno;
	u32 e_cpos, num_clusters;
	/* The bucket at the front of the extent */
	struct ocfs2_xattr_bucket *first;

	FUNC13(
				(unsigned long long)FUNC1(target));

	/* The first bucket of the original extent */
	first = FUNC10(inode);
	if (!first) {
		ret = -ENOMEM;
		FUNC5(ret);
		goto out;
	}

	ret = FUNC12(inode, name_hash, &p_blkno, &e_cpos,
				  &num_clusters, el);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC8(first, p_blkno);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	num_buckets = FUNC11(osb) * num_clusters;
	if (num_buckets == FUNC3(FUNC2(first)->xh_num_buckets)) {
		/*
		 * This can move first+target if the target bucket moves
		 * to the new extent.
		 */
		ret = FUNC6(inode,
						  xb_bh,
						  first,
						  target,
						  &num_clusters,
						  e_cpos,
						  &extend,
						  ctxt);
		if (ret) {
			FUNC5(ret);
			goto out;
		}
	}

	if (extend) {
		ret = FUNC7(inode,
						ctxt->handle,
						first,
						FUNC1(target),
						num_clusters);
		if (ret)
			FUNC5(ret);
	}

out:
	FUNC9(first);

	return ret;
}