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
struct fdtable {unsigned int max_fds; unsigned long* close_on_exec; struct file** fd; } ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (struct files_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fdtable* FUNC2 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct files_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct files_struct *files)
{
	unsigned i;
	struct fdtable *fdt;

	/* exec unshares first */
	FUNC5(&files->file_lock);
	for (i = 0; ; i++) {
		unsigned long set;
		unsigned fd = i * BITS_PER_LONG;
		fdt = FUNC2(files);
		if (fd >= fdt->max_fds)
			break;
		set = fdt->close_on_exec[i];
		if (!set)
			continue;
		fdt->close_on_exec[i] = 0;
		for ( ; set ; fd++, set >>= 1) {
			struct file *file;
			if (!(set & 1))
				continue;
			file = fdt->fd[fd];
			if (!file)
				continue;
			FUNC4(fdt->fd[fd], NULL);
			FUNC0(files, fd);
			FUNC6(&files->file_lock);
			FUNC3(file, files);
			FUNC1();
			FUNC5(&files->file_lock);
		}

	}
	FUNC6(&files->file_lock);
}