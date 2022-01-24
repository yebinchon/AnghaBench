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
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 struct inode* FUNC0 (struct dentry*) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (struct task_struct*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry, unsigned int flags)
{
	struct task_struct *task;
	struct inode *inode;
	unsigned int fd;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	inode = FUNC0(dentry);
	task = FUNC1(inode);
	fd = FUNC2(inode);

	if (task) {
		fmode_t f_mode;
		if (FUNC4(task, fd, &f_mode)) {
			FUNC5(task, inode, f_mode);
			FUNC3(task);
			return 1;
		}
		FUNC3(task);
	}
	return 0;
}