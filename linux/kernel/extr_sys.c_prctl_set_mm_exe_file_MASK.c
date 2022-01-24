#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {TYPE_1__* vm_file; struct vm_area_struct* vm_next; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  exe_file; struct vm_area_struct* mmap; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int /*<<< orphan*/  f_path; } ;
struct fd {TYPE_2__* file; } ;
struct TYPE_6__ {int /*<<< orphan*/  f_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int EACCES ; 
 int EBADF ; 
 int EBUSY ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fd FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct fd) ; 
 struct inode* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct file* FUNC7 (struct mm_struct*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct file* FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(struct mm_struct *mm, unsigned int fd)
{
	struct fd exe;
	struct file *old_exe, *exe_file;
	struct inode *inode;
	int err;

	exe = FUNC2(fd);
	if (!exe.file)
		return -EBADF;

	inode = FUNC4(exe.file);

	/*
	 * Because the original mm->exe_file points to executable file, make
	 * sure that this one is executable as well, to avoid breaking an
	 * overall picture.
	 */
	err = -EACCES;
	if (!FUNC0(inode->i_mode) || FUNC10(&exe.file->f_path))
		goto exit;

	err = FUNC8(inode, MAY_EXEC);
	if (err)
		goto exit;

	/*
	 * Forbid mm->exe_file change if old file still mapped.
	 */
	exe_file = FUNC7(mm);
	err = -EBUSY;
	if (exe_file) {
		struct vm_area_struct *vma;

		FUNC1(&mm->mmap_sem);
		for (vma = mm->mmap; vma; vma = vma->vm_next) {
			if (!vma->vm_file)
				continue;
			if (FUNC9(&vma->vm_file->f_path,
				       &exe_file->f_path))
				goto exit_err;
		}

		FUNC11(&mm->mmap_sem);
		FUNC5(exe_file);
	}

	err = 0;
	/* set the new file, lockless */
	FUNC6(exe.file);
	old_exe = FUNC12(&mm->exe_file, exe.file);
	if (old_exe)
		FUNC5(old_exe);
exit:
	FUNC3(exe);
	return err;
exit_err:
	FUNC11(&mm->mmap_sem);
	FUNC5(exe_file);
	goto exit;
}