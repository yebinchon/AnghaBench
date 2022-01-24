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
struct vm_area_struct {int /*<<< orphan*/ * vm_ops; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct file*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  nfs_file_vm_ops ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct file * file, struct vm_area_struct * vma)
{
	struct inode *inode = FUNC1(file);
	int	status;

	FUNC0("NFS: mmap(%pD2)\n", file);

	/* Note: generic_file_mmap() returns ENOSYS on nommu systems
	 *       so we call that before revalidating the mapping
	 */
	status = FUNC2(file, vma);
	if (!status) {
		vma->vm_ops = &nfs_file_vm_ops;
		status = FUNC3(inode, file->f_mapping);
	}
	return status;
}