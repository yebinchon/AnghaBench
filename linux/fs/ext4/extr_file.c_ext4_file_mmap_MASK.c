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
struct vm_area_struct {int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_flags; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ext4_sb_info {struct dax_device* s_daxdev; } ;
struct dax_device {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 struct ext4_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_HUGEPAGE ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,struct dax_device*) ; 
 int /*<<< orphan*/  ext4_dax_vm_ops ; 
 int /*<<< orphan*/  ext4_file_vm_ops ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct vm_area_struct *vma)
{
	struct inode *inode = file->f_mapping->host;
	struct ext4_sb_info *sbi = FUNC0(inode->i_sb);
	struct dax_device *dax_dev = sbi->s_daxdev;

	if (FUNC6(FUNC3(sbi)))
		return -EIO;

	/*
	 * We don't support synchronous mappings for non-DAX files and
	 * for DAX files if underneath dax_device is not synchronous.
	 */
	if (!FUNC2(vma, dax_dev))
		return -EOPNOTSUPP;

	FUNC4(file);
	if (FUNC1(FUNC5(file))) {
		vma->vm_ops = &ext4_dax_vm_ops;
		vma->vm_flags |= VM_HUGEPAGE;
	} else {
		vma->vm_ops = &ext4_file_vm_ops;
	}
	return 0;
}