#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_10__ {void* l_next_free_rec; void* l_count; scalar_t__ l_tree_depth; } ;
struct ocfs2_xattr_tree_root {TYPE_2__ xt_list; scalar_t__ xt_last_eb_blk; void* xt_clusters; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; TYPE_5__* meta_ac; } ;
struct TYPE_9__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {void* xb_flags; TYPE_1__ xb_attrs; void* xb_blkno; void* xb_fs_generation; void* xb_suballoc_bit; void* xb_suballoc_loc; void* xb_suballoc_slot; } ;
struct ocfs2_dinode {void* i_dyn_features; void* i_xattr_loc; } ;
struct inode {TYPE_3__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_14__ {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;
struct TYPE_13__ {int fs_generation; } ;
struct TYPE_12__ {int ac_alloc_slot; } ;
struct TYPE_11__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int OCFS2_HAS_XATTR_FL ; 
 TYPE_8__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 TYPE_6__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  OCFS2_XATTR_BLOCK_SIGNATURE ; 
 int OCFS2_XATTR_INDEXED ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_xattr_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC14 (TYPE_3__*) ; 
 struct buffer_head* FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct inode *inode,
				    struct buffer_head *inode_bh,
				    struct ocfs2_xattr_set_ctxt *ctxt,
				    int indexed,
				    struct buffer_head **ret_bh)
{
	int ret;
	u16 suballoc_bit_start;
	u32 num_got;
	u64 suballoc_loc, first_blkno;
	struct ocfs2_dinode *di =  (struct ocfs2_dinode *)inode_bh->b_data;
	struct buffer_head *new_bh = NULL;
	struct ocfs2_xattr_block *xblk;

	ret = FUNC10(ctxt->handle, FUNC0(inode),
				      inode_bh, OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret < 0) {
		FUNC8(ret);
		goto end;
	}

	ret = FUNC9(ctxt->handle, ctxt->meta_ac, 1,
				   &suballoc_loc, &suballoc_bit_start,
				   &num_got, &first_blkno);
	if (ret < 0) {
		FUNC8(ret);
		goto end;
	}

	new_bh = FUNC15(inode->i_sb, first_blkno);
	if (!new_bh) {
		ret = -ENOMEM;
		FUNC8(ret);
		goto end;
	}

	FUNC13(FUNC0(inode), new_bh);

	ret = FUNC11(ctxt->handle, FUNC0(inode),
				      new_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret < 0) {
		FUNC8(ret);
		goto end;
	}

	/* Initialize ocfs2_xattr_block */
	xblk = (struct ocfs2_xattr_block *)new_bh->b_data;
	FUNC7(xblk, 0, inode->i_sb->s_blocksize);
	FUNC18((void *)xblk, OCFS2_XATTR_BLOCK_SIGNATURE);
	xblk->xb_suballoc_slot = FUNC4(ctxt->meta_ac->ac_alloc_slot);
	xblk->xb_suballoc_loc = FUNC6(suballoc_loc);
	xblk->xb_suballoc_bit = FUNC4(suballoc_bit_start);
	xblk->xb_fs_generation =
		FUNC5(FUNC2(inode->i_sb)->fs_generation);
	xblk->xb_blkno = FUNC6(first_blkno);
	if (indexed) {
		struct ocfs2_xattr_tree_root *xr = &xblk->xb_attrs.xb_root;
		xr->xt_clusters = FUNC5(1);
		xr->xt_last_eb_blk = 0;
		xr->xt_list.l_tree_depth = 0;
		xr->xt_list.l_count = FUNC4(
					FUNC14(inode->i_sb));
		xr->xt_list.l_next_free_rec = FUNC4(1);
		xblk->xb_flags = FUNC4(OCFS2_XATTR_INDEXED);
	}
	FUNC12(ctxt->handle, new_bh);

	/* Add it to the inode */
	di->i_xattr_loc = FUNC6(first_blkno);

	FUNC16(&FUNC1(inode)->ip_lock);
	FUNC1(inode)->ip_dyn_features |= OCFS2_HAS_XATTR_FL;
	di->i_dyn_features = FUNC4(FUNC1(inode)->ip_dyn_features);
	FUNC17(&FUNC1(inode)->ip_lock);

	FUNC12(ctxt->handle, inode_bh);

	*ret_bh = new_bh;
	new_bh = NULL;

end:
	FUNC3(new_bh);
	return ret;
}