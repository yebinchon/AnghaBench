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
struct task_struct {int flags; struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

struct mm_struct *FUNC3(struct task_struct *task)
{
	struct mm_struct *mm;

	FUNC1(task);
	mm = task->mm;
	if (mm) {
		if (task->flags & PF_KTHREAD)
			mm = NULL;
		else
			FUNC0(mm);
	}
	FUNC2(task);
	return mm;
}