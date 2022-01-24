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
struct path {int dummy; } ;
struct file {struct path f_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 struct file* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry, struct path *exe_path)
{
	struct task_struct *task;
	struct file *exe_file;

	task = FUNC2(FUNC0(dentry));
	if (!task)
		return -ENOENT;
	exe_file = FUNC3(task);
	FUNC5(task);
	if (exe_file) {
		*exe_path = exe_file->f_path;
		FUNC4(&exe_file->f_path);
		FUNC1(exe_file);
		return 0;
	} else
		return -ENOENT;
}