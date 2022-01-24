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
struct task_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 scalar_t__ FUNC0 (struct mm_struct*) ; 
 unsigned int LOOKUP_RCU ; 
 int /*<<< orphan*/  PTRACE_MODE_READ_FSCREDS ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,unsigned long*,unsigned long*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,unsigned long) ; 
 struct task_struct* FUNC5 (struct inode*) ; 
 struct mm_struct* FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry, unsigned int flags)
{
	unsigned long vm_start, vm_end;
	bool exact_vma_exists = false;
	struct mm_struct *mm = NULL;
	struct task_struct *task;
	struct inode *inode;
	int status = 0;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	inode = FUNC1(dentry);
	task = FUNC5(inode);
	if (!task)
		goto out_notask;

	mm = FUNC6(task, PTRACE_MODE_READ_FSCREDS);
	if (FUNC0(mm))
		goto out;

	if (!FUNC2(dentry, &vm_start, &vm_end)) {
		status = FUNC3(&mm->mmap_sem);
		if (!status) {
			exact_vma_exists = !!FUNC4(mm, vm_start,
							    vm_end);
			FUNC11(&mm->mmap_sem);
		}
	}

	FUNC7(mm);

	if (exact_vma_exists) {
		FUNC10(task, 0, &inode->i_uid, &inode->i_gid);

		FUNC9(task, inode);
		status = 1;
	}

out:
	FUNC8(task);

out_notask:
	return status;
}