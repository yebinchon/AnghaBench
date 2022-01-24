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
struct task_struct {int flags; } ;
struct file {int /*<<< orphan*/  f_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 

void FUNC3(struct file *file)
{
	if (FUNC2(&file->f_count)) {
		struct task_struct *task = current;
		FUNC0(!(task->flags & PF_KTHREAD));
		FUNC1(file);
	}
}