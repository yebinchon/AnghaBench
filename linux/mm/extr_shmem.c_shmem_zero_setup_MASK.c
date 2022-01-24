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
struct vm_area_struct {int vm_end; int vm_start; int /*<<< orphan*/  vm_flags; int /*<<< orphan*/ * vm_ops; struct file* vm_file; } ;
struct file {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGE_PAGECACHE ; 
 int HPAGE_PMD_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 struct file* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shmem_vm_ops ; 

int FUNC6(struct vm_area_struct *vma)
{
	struct file *file;
	loff_t size = vma->vm_end - vma->vm_start;

	/*
	 * Cloning a new file under mmap_sem leads to a lock ordering conflict
	 * between XFS directory reading and selinux: since this file is only
	 * accessible to the user through its mapping, use S_PRIVATE flag to
	 * bypass file security, in the same way as shmem_kernel_file_setup().
	 */
	file = FUNC5("dev/zero", size, vma->vm_flags);
	if (FUNC1(file))
		return FUNC2(file);

	if (vma->vm_file)
		FUNC3(vma->vm_file);
	vma->vm_file = file;
	vma->vm_ops = &shmem_vm_ops;

	if (FUNC0(CONFIG_TRANSPARENT_HUGE_PAGECACHE) &&
			((vma->vm_start + ~HPAGE_PMD_MASK) & HPAGE_PMD_MASK) <
			(vma->vm_end & HPAGE_PMD_MASK)) {
		FUNC4(vma, vma->vm_flags);
	}

	return 0;
}