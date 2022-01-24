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
struct page {scalar_t__ mapping; int /*<<< orphan*/  index; } ;
struct inode {scalar_t__ i_mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static vm_fault_t FUNC5(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC0(vmf->vma->vm_file);

	FUNC1(vmf->vma->vm_file);
	FUNC3(page);
	if (page->mapping != inode->i_mapping) {
		FUNC4(page);
		return VM_FAULT_NOPAGE;
	}

	FUNC2(inode, page->index);
	return VM_FAULT_LOCKED;
}