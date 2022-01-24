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
struct vm_fault {unsigned long pgoff; int /*<<< orphan*/  page; TYPE_1__* vma; } ;
struct usX2Ydev {scalar_t__ hwdep_pcm_shm; } ;
struct TYPE_2__ {scalar_t__ vm_private_data; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static vm_fault_t FUNC2(struct vm_fault *vmf)
{
	unsigned long offset;
	void *vaddr;

	offset = vmf->pgoff << PAGE_SHIFT;
	vaddr = (char *)((struct usX2Ydev *)vmf->vma->vm_private_data)->hwdep_pcm_shm + offset;
	vmf->page = FUNC1(vaddr);
	FUNC0(vmf->page);
	return 0;
}