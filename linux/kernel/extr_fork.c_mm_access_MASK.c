#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* signal; } ;
struct mm_struct {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 int EACCES ; 
 struct mm_struct* FUNC0 (int) ; 
 TYPE_2__* current ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned int) ; 

struct mm_struct *FUNC6(struct task_struct *task, unsigned int mode)
{
	struct mm_struct *mm;
	int err;

	err =  FUNC3(&task->signal->cred_guard_mutex);
	if (err)
		return FUNC0(err);

	mm = FUNC1(task);
	if (mm && mm != current->mm &&
			!FUNC5(task, mode)) {
		FUNC2(mm);
		mm = FUNC0(-EACCES);
	}
	FUNC4(&task->signal->cred_guard_mutex);

	return mm;
}