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
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct file {struct path f_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct file* FUNC1 (struct files_struct*,unsigned int) ; 
 struct files_struct* FUNC2 (struct task_struct*) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dentry *dentry, struct path *path)
{
	struct files_struct *files = NULL;
	struct task_struct *task;
	int ret = -ENOENT;

	task = FUNC3(FUNC0(dentry));
	if (task) {
		files = FUNC2(task);
		FUNC7(task);
	}

	if (files) {
		unsigned int fd = FUNC5(FUNC0(dentry));
		struct file *fd_file;

		FUNC8(&files->file_lock);
		fd_file = FUNC1(files, fd);
		if (fd_file) {
			*path = fd_file->f_path;
			FUNC4(&fd_file->f_path);
			ret = 0;
		}
		FUNC9(&files->file_lock);
		FUNC6(files);
	}

	return ret;
}