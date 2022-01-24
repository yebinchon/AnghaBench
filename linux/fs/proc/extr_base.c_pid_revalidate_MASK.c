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

/* Variables and functions */
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 struct inode* FUNC0 (struct dentry*) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, unsigned int flags)
{
	struct inode *inode;
	struct task_struct *task;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	inode = FUNC0(dentry);
	task = FUNC1(inode);

	if (task) {
		FUNC2(task, inode);
		FUNC3(task);
		return 1;
	}
	return 0;
}