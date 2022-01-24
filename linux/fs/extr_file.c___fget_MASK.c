#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct files_struct {int dummy; } ;
struct file {int f_mode; } ;
typedef  int fmode_t ;
struct TYPE_2__ {struct files_struct* files; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 struct file* FUNC0 (struct files_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct file *FUNC4(unsigned int fd, fmode_t mask, unsigned int refs)
{
	struct files_struct *files = current->files;
	struct file *file;

	FUNC2();
loop:
	file = FUNC0(files, fd);
	if (file) {
		/* File object ref couldn't be taken.
		 * dup2() atomicity guarantee is the reason
		 * we loop to catch the new file (or NULL pointer)
		 */
		if (file->f_mode & mask)
			file = NULL;
		else if (!FUNC1(file, refs))
			goto loop;
	}
	FUNC3();

	return file;
}