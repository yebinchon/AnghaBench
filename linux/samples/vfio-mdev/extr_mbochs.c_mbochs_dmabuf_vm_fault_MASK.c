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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {size_t pgoff; int /*<<< orphan*/  page; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct mbochs_dmabuf* vm_private_data; } ;
struct mbochs_dmabuf {size_t pagecount; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC2(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct mbochs_dmabuf *dmabuf = vma->vm_private_data;

	if (FUNC0(vmf->pgoff >= dmabuf->pagecount))
		return VM_FAULT_SIGBUS;

	vmf->page = dmabuf->pages[vmf->pgoff];
	FUNC1(vmf->page);
	return 0;
}