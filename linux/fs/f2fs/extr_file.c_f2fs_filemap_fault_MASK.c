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
typedef  scalar_t__ vm_fault_t ;
struct vm_fault {int /*<<< orphan*/  pgoff; TYPE_1__* vma; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mmap_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_fault_t FUNC6(struct vm_fault *vmf)
{
	struct inode *inode = FUNC2(vmf->vma->vm_file);
	vm_fault_t ret;

	FUNC1(&FUNC0(inode)->i_mmap_sem);
	ret = FUNC3(vmf);
	FUNC5(&FUNC0(inode)->i_mmap_sem);

	FUNC4(inode, vmf->pgoff, (unsigned long)ret);

	return ret;
}