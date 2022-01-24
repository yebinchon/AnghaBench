#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_fault {struct page* page; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_file; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_mapping; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int EFAULT ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int FUNC0 (struct page*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct page*,int /*<<< orphan*/ ,unsigned long) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

int FUNC10(struct vm_area_struct *vma, struct vm_fault *vmf,
			 get_block_t get_block)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC2(vma->vm_file);
	unsigned long end;
	loff_t size;
	int ret;

	FUNC4(page);
	size = FUNC3(inode);
	if ((page->mapping != inode->i_mapping) ||
	    (FUNC5(page) > size)) {
		/* We overload EFAULT to mean page got truncated */
		ret = -EFAULT;
		goto out_unlock;
	}

	/* page is wholly or partially inside EOF */
	if (((page->index + 1) << PAGE_SHIFT) > size)
		end = size & ~PAGE_MASK;
	else
		end = PAGE_SIZE;

	ret = FUNC0(page, 0, end, get_block);
	if (!ret)
		ret = FUNC1(page, 0, end);

	if (FUNC7(ret < 0))
		goto out_unlock;
	FUNC6(page);
	FUNC9(page);
	return 0;
out_unlock:
	FUNC8(page);
	return ret;
}