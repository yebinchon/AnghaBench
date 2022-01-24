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
struct vm_fault {TYPE_1__* vma; scalar_t__ pgoff; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int loff_t ;
typedef  enum page_entry_size { ____Placeholder_page_entry_size } page_entry_size ;
struct TYPE_2__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct vm_fault*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

vm_fault_t FUNC3(struct vm_fault *vmf,
		enum page_entry_size pe_size, pfn_t pfn)
{
	int err;
	loff_t start = ((loff_t)vmf->pgoff) << PAGE_SHIFT;
	unsigned int order = FUNC1(pe_size);
	size_t len = PAGE_SIZE << order;

	err = FUNC2(vmf->vma->vm_file, start, start + len - 1, 1);
	if (err)
		return VM_FAULT_SIGBUS;
	return FUNC0(vmf, pfn, order);
}