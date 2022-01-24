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
struct file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f2fs_file_vm_ops ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct inode* FUNC4 (struct file*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file, struct vm_area_struct *vma)
{
	struct inode *inode = FUNC4(file);
	int err;

	if (FUNC5(FUNC2(FUNC0(inode))))
		return -EIO;

	/* we don't need to use inline_data strictly */
	err = FUNC1(inode);
	if (err)
		return err;

	FUNC3(file);
	vma->vm_ops = &f2fs_file_vm_ops;
	return 0;
}