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
struct files_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_mode; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 struct file* FUNC0 (struct files_struct*,unsigned int) ; 
 struct files_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static bool FUNC5(struct task_struct *task, unsigned fd, fmode_t *mode)
{
	struct files_struct *files = FUNC1(task);
	struct file *file;

	if (!files)
		return false;

	FUNC3();
	file = FUNC0(files, fd);
	if (file)
		*mode = file->f_mode;
	FUNC4();
	FUNC2(files);
	return !!file;
}