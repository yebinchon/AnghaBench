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
struct vm_area_struct {struct file* vm_file; } ;
struct file {TYPE_1__* f_op; struct file* private_data; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct file*,struct vm_area_struct*) ; 
 TYPE_2__* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct file* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct cred* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct vm_area_struct *vma)
{
	struct file *realfile = file->private_data;
	const struct cred *old_cred;
	int ret;

	if (!realfile->f_op->mmap)
		return -ENODEV;

	if (FUNC0(file != vma->vm_file))
		return -EIO;

	vma->vm_file = FUNC4(realfile);

	old_cred = FUNC6(FUNC2(file)->i_sb);
	ret = FUNC1(vma->vm_file, vma);
	FUNC7(old_cred);

	if (ret) {
		/* Drop reference count from new vm_file value */
		FUNC3(realfile);
	} else {
		/* Drop reference count from previous vm_file value */
		FUNC3(file);
	}

	FUNC5(file);

	return ret;
}