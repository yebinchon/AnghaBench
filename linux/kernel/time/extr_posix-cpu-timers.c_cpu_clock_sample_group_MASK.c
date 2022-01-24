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
typedef  size_t clockid_t ;
struct TYPE_2__ {struct posix_cputimers posix_cputimers; struct thread_group_cputimer cputimer; } ;

/* Variables and functions */
 int CPUCLOCK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC4(const clockid_t clkid, struct task_struct *p,
				  bool start)
{
	struct thread_group_cputimer *cputimer = &p->signal->cputimer;
	struct posix_cputimers *pct = &p->signal->posix_cputimers;
	u64 samples[CPUCLOCK_MAX];

	if (!FUNC0(pct->timers_active)) {
		if (start)
			FUNC3(p, samples);
		else
			FUNC1(p, samples);
	} else {
		FUNC2(&cputimer->cputime_atomic, samples);
	}

	return samples[clkid];
}