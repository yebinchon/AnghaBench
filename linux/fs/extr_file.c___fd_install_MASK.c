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
struct files_struct {int /*<<< orphan*/  fdt; int /*<<< orphan*/  file_lock; int /*<<< orphan*/  resize_in_progress; } ;
struct file {int dummy; } ;
struct fdtable {int /*<<< orphan*/ ** fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fdtable* FUNC1 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct file*) ; 
 struct fdtable* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct files_struct *files, unsigned int fd,
		struct file *file)
{
	struct fdtable *fdt;

	FUNC4();

	if (FUNC9(files->resize_in_progress)) {
		FUNC5();
		FUNC7(&files->file_lock);
		fdt = FUNC1(files);
		FUNC0(fdt->fd[fd] != NULL);
		FUNC2(fdt->fd[fd], file);
		FUNC8(&files->file_lock);
		return;
	}
	/* coupled with smp_wmb() in expand_fdtable() */
	FUNC6();
	fdt = FUNC3(files->fdt);
	FUNC0(fdt->fd[fd] != NULL);
	FUNC2(fdt->fd[fd], file);
	FUNC5();
}