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
struct task_struct {scalar_t__ files; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static struct file *
FUNC5(struct task_struct *task, unsigned int idx)
{
	struct file *file = NULL;

	FUNC3(task);
	FUNC1();

	if (task->files)
		file = FUNC0(task->files, idx);

	FUNC2();
	FUNC4(task);

	return file;
}