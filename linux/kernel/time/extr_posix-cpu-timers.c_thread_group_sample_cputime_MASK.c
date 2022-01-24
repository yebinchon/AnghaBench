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
typedef  int /*<<< orphan*/  u64 ;
struct thread_group_cputimer {int /*<<< orphan*/  cputime_atomic; } ;
struct task_struct {TYPE_1__* signal; } ;
struct posix_cputimers {int /*<<< orphan*/  timers_active; } ;
struct TYPE_2__ {struct posix_cputimers posix_cputimers; struct thread_group_cputimer cputimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct task_struct *tsk, u64 *samples)
{
	struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
	struct posix_cputimers *pct = &tsk->signal->posix_cputimers;

	FUNC0(!pct->timers_active);

	FUNC1(&cputimer->cputime_atomic, samples);
}