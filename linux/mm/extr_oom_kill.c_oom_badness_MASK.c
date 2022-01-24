#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_2__* mm; TYPE_1__* signal; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ oom_score_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_OOM_SKIP ; 
 int /*<<< orphan*/  MM_SWAPENTS ; 
 long OOM_SCORE_ADJ_MIN ; 
 long PAGE_SIZE ; 
 struct task_struct* FUNC0 (struct task_struct*) ; 
 long FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 long FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 long FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned long FUNC8(struct task_struct *p, unsigned long totalpages)
{
	long points;
	long adj;

	if (FUNC5(p))
		return 0;

	p = FUNC0(p);
	if (!p)
		return 0;

	/*
	 * Do not even consider tasks which are explicitly marked oom
	 * unkillable or have been already oom reaped or the are in
	 * the middle of vfork
	 */
	adj = (long)p->signal->oom_score_adj;
	if (adj == OOM_SCORE_ADJ_MIN ||
			FUNC7(MMF_OOM_SKIP, &p->mm->flags) ||
			FUNC3(p)) {
		FUNC6(p);
		return 0;
	}

	/*
	 * The baseline for the badness score is the proportion of RAM that each
	 * task's rss, pagetable and swap space use.
	 */
	points = FUNC2(p->mm) + FUNC1(p->mm, MM_SWAPENTS) +
		FUNC4(p->mm) / PAGE_SIZE;
	FUNC6(p);

	/* Normalize to oom_score_adj units */
	adj *= totalpages / 1000;
	points += adj;

	/*
	 * Never return 0 for an eligible task regardless of the root bonus and
	 * oom_score_adj (oom_score_adj can't be OOM_SCORE_ADJ_MIN here).
	 */
	return points > 0 ? points : 1;
}