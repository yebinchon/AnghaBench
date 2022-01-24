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
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; int index; } ;
struct iomap_ops {int dummy; } ;
struct inode {scalar_t__ i_mapping; } ;
typedef  unsigned long ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 unsigned long EFAULT ; 
 int IOMAP_FAULT ; 
 int IOMAP_WRITE ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 unsigned long FUNC3 (struct inode*,int,unsigned long,int,struct iomap_ops const*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iomap_page_mkwrite_actor ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 unsigned long FUNC5 (int) ; 
 int FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

vm_fault_t FUNC10(struct vm_fault *vmf, const struct iomap_ops *ops)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC1(vmf->vma->vm_file);
	unsigned long length;
	loff_t offset, size;
	ssize_t ret;

	FUNC4(page);
	size = FUNC2(inode);
	if ((page->mapping != inode->i_mapping) ||
	    (FUNC6(page) > size)) {
		/* We overload EFAULT to mean page got truncated */
		ret = -EFAULT;
		goto out_unlock;
	}

	/* page is wholly or partially inside EOF */
	if (((page->index + 1) << PAGE_SHIFT) > size)
		length = FUNC5(size);
	else
		length = PAGE_SIZE;

	offset = FUNC6(page);
	while (length > 0) {
		ret = FUNC3(inode, offset, length,
				IOMAP_WRITE | IOMAP_FAULT, ops, page,
				iomap_page_mkwrite_actor);
		if (FUNC7(ret <= 0))
			goto out_unlock;
		offset += ret;
		length -= ret;
	}

	FUNC9(page);
	return VM_FAULT_LOCKED;
out_unlock:
	FUNC8(page);
	return FUNC0(ret);
}