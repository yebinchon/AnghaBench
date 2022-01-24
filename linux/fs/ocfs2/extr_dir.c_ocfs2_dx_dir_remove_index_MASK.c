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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dx_root_block {scalar_t__ dr_suballoc_loc; int /*<<< orphan*/  dr_suballoc_bit; scalar_t__ dr_blkno; int /*<<< orphan*/  dr_suballoc_slot; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_dx_root; int /*<<< orphan*/  i_dyn_features; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_dyn_features; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENT_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_DX_ROOT_REMOVE_CREDITS ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INDEXED_DIR_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct inode *dir,
				     struct buffer_head *di_bh,
				     struct buffer_head *dx_root_bh)
{
	int ret;
	struct ocfs2_super *osb = FUNC3(dir->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_dx_root_block *dx_root;
	struct inode *dx_alloc_inode = NULL;
	struct buffer_head *dx_alloc_bh = NULL;
	handle_t *handle;
	u64 blk;
	u16 bit;
	u64 bg_blkno;

	dx_root = (struct ocfs2_dx_root_block *) dx_root_bh->b_data;

	dx_alloc_inode = FUNC16(osb,
					EXTENT_ALLOC_SYSTEM_INODE,
					FUNC11(dx_root->dr_suballoc_slot));
	if (!dx_alloc_inode) {
		ret = -ENOMEM;
		FUNC13(ret);
		goto out;
	}
	FUNC8(dx_alloc_inode);

	ret = FUNC17(dx_alloc_inode, &dx_alloc_bh, 1);
	if (ret) {
		FUNC13(ret);
		goto out_mutex;
	}

	handle = FUNC21(osb, OCFS2_DX_ROOT_REMOVE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		FUNC13(ret);
		goto out_unlock;
	}

	ret = FUNC19(handle, FUNC0(dir), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC13(ret);
		goto out_commit;
	}

	FUNC24(&FUNC2(dir)->ip_lock);
	FUNC2(dir)->ip_dyn_features &= ~OCFS2_INDEXED_DIR_FL;
	di->i_dyn_features = FUNC6(FUNC2(dir)->ip_dyn_features);
	FUNC25(&FUNC2(dir)->ip_lock);
	di->i_dx_root = FUNC7(0ULL);
	FUNC22(handle, dir, 1);

	FUNC20(handle, di_bh);

	blk = FUNC12(dx_root->dr_blkno);
	bit = FUNC11(dx_root->dr_suballoc_bit);
	if (dx_root->dr_suballoc_loc)
		bg_blkno = FUNC12(dx_root->dr_suballoc_loc);
	else
		bg_blkno = FUNC23(blk, bit);
	ret = FUNC15(handle, dx_alloc_inode, dx_alloc_bh,
				       bit, bg_blkno, 1);
	if (ret)
		FUNC13(ret);

out_commit:
	FUNC14(osb, handle);

out_unlock:
	FUNC18(dx_alloc_inode, 1);

out_mutex:
	FUNC9(dx_alloc_inode);
	FUNC5(dx_alloc_bh);
out:
	FUNC10(dx_alloc_inode);
	return ret;
}