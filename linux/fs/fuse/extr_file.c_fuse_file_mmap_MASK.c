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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/ * vm_ops; } ;
struct fuse_file {int open_flags; } ;
struct file {int /*<<< orphan*/  f_mapping; struct fuse_file* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int FOPEN_DIRECT_IO ; 
 int VM_MAYSHARE ; 
 int VM_MAYWRITE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  fuse_file_vm_ops ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *vma)
{
	struct fuse_file *ff = file->private_data;

	if (ff->open_flags & FOPEN_DIRECT_IO) {
		/* Can't provide the coherency needed for MAP_SHARED */
		if (vma->vm_flags & VM_MAYSHARE)
			return -ENODEV;

		FUNC3(file->f_mapping);

		return FUNC2(file, vma);
	}

	if ((vma->vm_flags & VM_SHARED) && (vma->vm_flags & VM_MAYWRITE))
		FUNC1(file);

	FUNC0(file);
	vma->vm_ops = &fuse_file_vm_ops;
	return 0;
}