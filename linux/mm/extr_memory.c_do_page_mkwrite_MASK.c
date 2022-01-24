#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_fault_t ;
struct vm_fault {unsigned int flags; TYPE_4__* vma; struct page* page; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct TYPE_8__ {TYPE_3__* vm_ops; TYPE_2__* vm_file; } ;
struct TYPE_7__ {int (* page_mkwrite ) (struct vm_fault*) ;} ;
struct TYPE_6__ {TYPE_1__* f_mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAULT_FLAG_MKWRITE ; 
 int FAULT_FLAG_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_LOCKED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct vm_fault*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static vm_fault_t FUNC7(struct vm_fault *vmf)
{
	vm_fault_t ret;
	struct page *page = vmf->page;
	unsigned int old_flags = vmf->flags;

	vmf->flags = FAULT_FLAG_WRITE|FAULT_FLAG_MKWRITE;

	if (vmf->vma->vm_file &&
	    FUNC0(vmf->vma->vm_file->f_mapping->host))
		return VM_FAULT_SIGBUS;

	ret = vmf->vma->vm_ops->page_mkwrite(vmf);
	/* Restore original flags so that caller is not surprised */
	vmf->flags = old_flags;
	if (FUNC5(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE)))
		return ret;
	if (FUNC5(!(ret & VM_FAULT_LOCKED))) {
		FUNC3(page);
		if (!page->mapping) {
			FUNC6(page);
			return 0; /* retry */
		}
		ret |= VM_FAULT_LOCKED;
	} else
		FUNC2(!FUNC1(page), page);
	return ret;
}