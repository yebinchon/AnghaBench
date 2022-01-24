#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; scalar_t__ index; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; int /*<<< orphan*/  data_blkaddr; } ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_mmap_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_MAPPED_IO ; 
 int /*<<< orphan*/  DATA ; 
 int EFAULT ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  F2FS_BLKSIZE ; 
 int /*<<< orphan*/  F2FS_GET_BLOCK_PRE_AIO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct f2fs_sb_info*) ; 
 int FUNC11 (struct dnode_of_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 struct inode* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (struct page*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct page*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC33(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC19(vmf->vma->vm_file);
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct dnode_of_data dn = { .node_changed = false };
	int err;

	if (FUNC29(FUNC10(sbi))) {
		err = -EIO;
		goto err;
	}

	if (!FUNC13(sbi)) {
		err = -ENOSPC;
		goto err;
	}

	FUNC25(inode->i_sb);

	FUNC9(sbi, FUNC12(inode));

	FUNC20(vmf->vma->vm_file);
	FUNC7(&FUNC0(inode)->i_mmap_sem);
	FUNC22(page);
	if (FUNC29(page->mapping != inode->i_mapping ||
			FUNC23(page) > FUNC21(inode) ||
			!FUNC3(page))) {
		FUNC30(page);
		err = -EFAULT;
		goto out_sem;
	}

	/* block allocation */
	FUNC5(sbi, F2FS_GET_BLOCK_PRE_AIO, true);
	FUNC26(&dn, inode, NULL, NULL, 0);
	err = FUNC11(&dn, page->index);
	FUNC14(&dn);
	FUNC5(sbi, F2FS_GET_BLOCK_PRE_AIO, false);
	if (err) {
		FUNC30(page);
		goto out_sem;
	}

	/* fill the page */
	FUNC18(page, DATA, false, true);

	/* wait for GCed page writeback via META_MAPPING */
	FUNC17(inode, dn.data_blkaddr);

	/*
	 * check to see if the page is mapped already (no holes)
	 */
	if (FUNC2(page))
		goto out_sem;

	/* page is wholly or partially inside EOF */
	if (((loff_t)(page->index + 1) << PAGE_SHIFT) >
						FUNC21(inode)) {
		loff_t offset;

		offset = FUNC21(inode) & ~PAGE_MASK;
		FUNC32(page, offset, PAGE_SIZE);
	}
	FUNC27(page);
	if (!FUNC3(page))
		FUNC4(page);

	FUNC15(sbi, APP_MAPPED_IO, F2FS_BLKSIZE);
	FUNC16(sbi, REQ_TIME);

	FUNC28(page, DATA);
out_sem:
	FUNC31(&FUNC0(inode)->i_mmap_sem);

	FUNC8(sbi, dn.node_changed);

	FUNC24(inode->i_sb);
err:
	return FUNC6(err);
}