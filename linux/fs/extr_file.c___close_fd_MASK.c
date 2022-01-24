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
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct file {int dummy; } ;
struct fdtable {unsigned int max_fds; struct file** fd; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (struct files_struct*,unsigned int) ; 
 struct fdtable* FUNC1 (struct files_struct*) ; 
 int FUNC2 (struct file*,struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct files_struct *files, unsigned fd)
{
	struct file *file;
	struct fdtable *fdt;

	FUNC4(&files->file_lock);
	fdt = FUNC1(files);
	if (fd >= fdt->max_fds)
		goto out_unlock;
	file = fdt->fd[fd];
	if (!file)
		goto out_unlock;
	FUNC3(fdt->fd[fd], NULL);
	FUNC0(files, fd);
	FUNC5(&files->file_lock);
	return FUNC2(file, files);

out_unlock:
	FUNC5(&files->file_lock);
	return -EBADF;
}