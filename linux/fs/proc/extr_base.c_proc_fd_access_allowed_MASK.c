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
 int /*<<< orphan*/  PTRACE_MODE_READ_FSCREDS ; 
 struct task_struct* FUNC0 (struct inode*) ; 
 int FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode)
{
	struct task_struct *task;
	int allowed = 0;
	/* Allow access to a task's file descriptors if it is us or we
	 * may use ptrace attach to the process and find out that
	 * information.
	 */
	task = FUNC0(inode);
	if (task) {
		allowed = FUNC1(task, PTRACE_MODE_READ_FSCREDS);
		FUNC2(task);
	}
	return allowed;
}