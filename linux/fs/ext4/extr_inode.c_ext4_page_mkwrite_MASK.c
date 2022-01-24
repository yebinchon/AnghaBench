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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct file* vm_file; } ;
struct page {unsigned long index; struct address_space* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned long loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  get_block_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELALLOC ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_WRITE_PAGE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int FUNC3 (struct vm_area_struct*,struct vm_fault*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext4_bh_unmapped ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/ * ext4_da_get_block_prep ; 
 int /*<<< orphan*/ * ext4_get_block ; 
 int /*<<< orphan*/ * ext4_get_block_unwritten ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct inode* FUNC16 (struct file*) ; 
 int /*<<< orphan*/  FUNC17 (struct file*) ; 
 unsigned long FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 scalar_t__ FUNC21 (struct page*) ; 
 unsigned long FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct page*) ; 

vm_fault_t FUNC30(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct page *page = vmf->page;
	loff_t size;
	unsigned long len;
	int err;
	vm_fault_t ret;
	struct file *file = vma->vm_file;
	struct inode *inode = FUNC16(file);
	struct address_space *mapping = inode->i_mapping;
	handle_t *handle;
	get_block_t *get_block;
	int retries = 0;

	if (FUNC26(FUNC2(inode)))
		return VM_FAULT_SIGBUS;

	FUNC24(inode->i_sb);
	FUNC17(vma->vm_file);

	FUNC5(&FUNC0(inode)->i_mmap_sem);

	err = FUNC6(inode);
	if (err)
		goto out_ret;

	/* Delalloc case is easy... */
	if (FUNC25(inode->i_sb, DELALLOC) &&
	    !FUNC12(inode) &&
	    !FUNC9(inode->i_sb)) {
		do {
			err = FUNC3(vma, vmf,
						   ext4_da_get_block_prep);
		} while (err == -ENOSPC &&
		       FUNC13(inode->i_sb, &retries));
		goto out_ret;
	}

	FUNC19(page);
	size = FUNC18(inode);
	/* Page got truncated from under us? */
	if (page->mapping != mapping || FUNC22(page) > size) {
		FUNC27(page);
		ret = VM_FAULT_NOPAGE;
		goto out;
	}

	if (page->index == size >> PAGE_SHIFT)
		len = size & ~PAGE_MASK;
	else
		len = PAGE_SIZE;
	/*
	 * Return if we have all the buffers mapped. This avoids the need to do
	 * journal_start/journal_stop which can block and take a long time
	 */
	if (FUNC21(page)) {
		if (!FUNC14(NULL, FUNC20(page),
					    0, len, NULL,
					    ext4_bh_unmapped)) {
			/* Wait so that we don't change page under IO */
			FUNC29(page);
			ret = VM_FAULT_LOCKED;
			goto out;
		}
	}
	FUNC27(page);
	/* OK, we need to fill the hole... */
	if (FUNC11(inode))
		get_block = ext4_get_block_unwritten;
	else
		get_block = ext4_get_block;
retry_alloc:
	handle = FUNC7(inode, EXT4_HT_WRITE_PAGE,
				    FUNC15(inode));
	if (FUNC1(handle)) {
		ret = VM_FAULT_SIGBUS;
		goto out;
	}
	err = FUNC3(vma, vmf, get_block);
	if (!err && FUNC12(inode)) {
		if (FUNC14(handle, FUNC20(page), 0,
			  PAGE_SIZE, NULL, do_journal_get_write_access)) {
			FUNC27(page);
			ret = VM_FAULT_SIGBUS;
			FUNC8(handle);
			goto out;
		}
		FUNC10(inode, EXT4_STATE_JDATA);
	}
	FUNC8(handle);
	if (err == -ENOSPC && FUNC13(inode->i_sb, &retries))
		goto retry_alloc;
out_ret:
	ret = FUNC4(err);
out:
	FUNC28(&FUNC0(inode)->i_mmap_sem);
	FUNC23(inode->i_sb);
	return ret;
}