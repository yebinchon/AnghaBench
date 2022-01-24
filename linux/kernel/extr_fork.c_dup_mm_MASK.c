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
struct task_struct {int dummy; } ;
struct mm_struct {TYPE_1__* binfmt; int /*<<< orphan*/  total_vm; int /*<<< orphan*/  hiwater_vm; int /*<<< orphan*/  hiwater_rss; int /*<<< orphan*/  user_ns; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 struct mm_struct* FUNC0 () ; 
 int FUNC1 (struct mm_struct*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mm_struct *FUNC8(struct task_struct *tsk,
				struct mm_struct *oldmm)
{
	struct mm_struct *mm;
	int err;

	mm = FUNC0();
	if (!mm)
		goto fail_nomem;

	FUNC3(mm, oldmm, sizeof(*mm));

	if (!FUNC4(mm, tsk, mm->user_ns))
		goto fail_nomem;

	err = FUNC1(mm, oldmm);
	if (err)
		goto free_pt;

	mm->hiwater_rss = FUNC2(mm);
	mm->hiwater_vm = mm->total_vm;

	if (mm->binfmt && !FUNC7(mm->binfmt->module))
		goto free_pt;

	return mm;

free_pt:
	/* don't put binfmt in mmput, we haven't got module yet */
	mm->binfmt = NULL;
	FUNC5(mm, NULL);
	FUNC6(mm);

fail_nomem:
	return NULL;
}