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
struct mm_struct {int dummy; } ;
struct linux_binprm {struct mm_struct* mm; int /*<<< orphan*/  rlim_stack; } ;
struct TYPE_4__ {int /*<<< orphan*/  group_leader; TYPE_1__* signal; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rlim; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t RLIMIT_STACK ; 
 int FUNC0 (struct linux_binprm*) ; 
 TYPE_2__* current ; 
 struct mm_struct* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct linux_binprm *bprm)
{
	int err;
	struct mm_struct *mm = NULL;

	bprm->mm = mm = FUNC1();
	err = -ENOMEM;
	if (!mm)
		goto err;

	/* Save current stack limit for all calculations made during exec. */
	FUNC3(current->group_leader);
	bprm->rlim_stack = current->signal->rlim[RLIMIT_STACK];
	FUNC4(current->group_leader);

	err = FUNC0(bprm);
	if (err)
		goto err;

	return 0;

err:
	if (mm) {
		bprm->mm = NULL;
		FUNC2(mm);
	}

	return err;
}