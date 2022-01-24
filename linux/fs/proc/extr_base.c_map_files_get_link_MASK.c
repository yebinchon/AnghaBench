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
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct task_struct {int dummy; } ;
struct path {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct path f_path; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*,unsigned long*,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dentry *dentry, struct path *path)
{
	unsigned long vm_start, vm_end;
	struct vm_area_struct *vma;
	struct task_struct *task;
	struct mm_struct *mm;
	int rc;

	rc = -ENOENT;
	task = FUNC4(FUNC0(dentry));
	if (!task)
		goto out;

	mm = FUNC5(task);
	FUNC8(task);
	if (!mm)
		goto out;

	rc = FUNC1(dentry, &vm_start, &vm_end);
	if (rc)
		goto out_mmput;

	rc = FUNC2(&mm->mmap_sem);
	if (rc)
		goto out_mmput;

	rc = -ENOENT;
	vma = FUNC3(mm, vm_start, vm_end);
	if (vma && vma->vm_file) {
		*path = vma->vm_file->f_path;
		FUNC7(path);
		rc = 0;
	}
	FUNC9(&mm->mmap_sem);

out_mmput:
	FUNC6(mm);
out:
	return rc;
}