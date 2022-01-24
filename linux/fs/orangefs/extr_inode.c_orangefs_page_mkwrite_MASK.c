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
typedef  int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; } ;
struct orangefs_write_range {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; void* len; void* pos; } ;
struct orangefs_inode_s {unsigned long bitlock; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct orangefs_inode_s* FUNC0 (struct inode*) ; 
 void* PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int VM_FAULT_LOCKED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_RETRY ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct orangefs_write_range* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 void* FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,unsigned long) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 scalar_t__ FUNC22 (unsigned long*,int,int /*<<< orphan*/ ) ; 

vm_fault_t FUNC23(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC6(vmf->vma->vm_file);
	struct orangefs_inode_s *orangefs_inode = FUNC0(inode);
	unsigned long *bitlock = &orangefs_inode->bitlock;
	vm_fault_t ret;
	struct orangefs_write_range *wr;

	FUNC16(inode->i_sb);

	if (FUNC22(bitlock, 1, TASK_KILLABLE)) {
		ret = VM_FAULT_RETRY;
		goto out;
	}

	FUNC11(page);
	if (FUNC1(page) && !FUNC2(page)) {
		/*
		 * Should be impossible.  If it happens, launder the page
		 * since we don't know what's dirty.  This will WARN in
		 * orangefs_writepage_locked.
		 */
		if (FUNC12(page)) {
			ret = VM_FAULT_LOCKED|VM_FAULT_RETRY;
			goto out;
		}
	}
	if (FUNC2(page)) {
		wr = (struct orangefs_write_range *)FUNC14(page);
		if (FUNC19(wr->uid, FUNC5()) &&
		    FUNC9(wr->gid, FUNC4())) {
			wr->pos = FUNC13(page);
			wr->len = PAGE_SIZE;
			goto okay;
		} else {
			if (FUNC12(page)) {
				ret = VM_FAULT_LOCKED|VM_FAULT_RETRY;
				goto out;
			}
		}
	}
	wr = FUNC10(sizeof *wr, GFP_KERNEL);
	if (!wr) {
		ret = VM_FAULT_LOCKED|VM_FAULT_RETRY;
		goto out;
	}
	wr->pos = FUNC13(page);
	wr->len = PAGE_SIZE;
	wr->uid = FUNC5();
	wr->gid = FUNC4();
	FUNC3(page);
	FUNC18(page, (unsigned long)wr);
	FUNC8(page);
okay:

	FUNC7(vmf->vma->vm_file);
	if (page->mapping != inode->i_mapping) {
		FUNC20(page);
		ret = VM_FAULT_LOCKED|VM_FAULT_NOPAGE;
		goto out;
	}

	/*
	 * We mark the page dirty already here so that when freeze is in
	 * progress, we are guaranteed that writeback during freezing will
	 * see the dirty page and writeprotect it again.
	 */
	FUNC17(page);
	FUNC21(page);
	ret = VM_FAULT_LOCKED;
out:
	FUNC15(inode->i_sb);
	return ret;
}