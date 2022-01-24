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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  xt_clusters; } ;
struct TYPE_5__ {TYPE_1__ xb_root; } ;
struct ocfs2_xattr_block {TYPE_2__ xb_attrs; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_delete_xattr_in_bucket ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC16 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct ocfs2_alloc_context**) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/ * FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (unsigned long long,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct inode *inode,
				  struct buffer_head *root_bh,
				  u64 blkno,
				  u32 cpos,
				  u32 len,
				  void *para)
{
	int ret;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	handle_t *handle;
	struct ocfs2_xattr_block *xb =
			(struct ocfs2_xattr_block *)root_bh->b_data;
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_extent_tree et;

	ret = FUNC13(inode, blkno, len,
					  ocfs2_delete_xattr_in_bucket, para);
	if (ret) {
		FUNC8(ret);
		return ret;
	}

	FUNC12(&et, FUNC0(inode), root_bh);

	FUNC11(&dealloc);

	FUNC26(
			(unsigned long long)FUNC2(inode)->ip_blkno,
			(unsigned long long)blkno, cpos, len);

	FUNC19(FUNC0(inode), blkno,
					       len);

	ret = FUNC16(inode, &et, 0, 1, NULL, &meta_ac);
	if (ret) {
		FUNC8(ret);
		return ret;
	}

	FUNC5(tl_inode);

	if (FUNC24(osb)) {
		ret = FUNC4(osb);
		if (ret < 0) {
			FUNC8(ret);
			goto out;
		}
	}

	handle = FUNC22(osb, FUNC18(osb->sb));
	if (FUNC1(handle)) {
		ret = -ENOMEM;
		FUNC8(ret);
		goto out;
	}

	ret = FUNC14(handle, FUNC0(inode), root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC8(ret);
		goto out_commit;
	}

	ret = FUNC17(handle, &et, cpos, len, meta_ac,
				  &dealloc);
	if (ret) {
		FUNC8(ret);
		goto out_commit;
	}

	FUNC7(&xb->xb_attrs.xb_root.xt_clusters, -len);
	FUNC15(handle, root_bh);

	ret = FUNC23(osb, handle, blkno, len);
	if (ret)
		FUNC8(ret);
	FUNC25(handle, inode, 0);

out_commit:
	FUNC9(osb, handle);
out:
	FUNC21(osb, 1);

	FUNC6(tl_inode);

	if (meta_ac)
		FUNC10(meta_ac);

	FUNC20(osb, &dealloc);

	return ret;
}