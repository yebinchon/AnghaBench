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
struct inode {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 int MAY_EXEC ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct inode*,int) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, int mask)
{
	bool is_same_tgroup;
	struct task_struct *task;

	task = FUNC1(inode);
	if (!task)
		return -ESRCH;
	is_same_tgroup = FUNC4(current, task);
	FUNC3(task);

	if (FUNC2(is_same_tgroup && !(mask & MAY_EXEC))) {
		/* This file (/proc/<pid>/task/<tid>/comm) can always be
		 * read or written by the members of the corresponding
		 * thread group.
		 */
		return 0;
	}

	return FUNC0(inode, mask);
}