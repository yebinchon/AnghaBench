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
struct vm_area_struct {int /*<<< orphan*/ * vm_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {TYPE_1__ f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ocfs2_file_vm_ops ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct file *file, struct vm_area_struct *vma)
{
	int ret = 0, lock_level = 0;

	ret = FUNC2(FUNC0(file),
				    file->f_path.mnt, &lock_level, 1);
	if (ret < 0) {
		FUNC1(ret);
		goto out;
	}
	FUNC3(FUNC0(file), lock_level);
out:
	vma->vm_ops = &ocfs2_file_vm_ops;
	return 0;
}