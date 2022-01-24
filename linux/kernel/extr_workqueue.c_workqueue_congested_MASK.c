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
struct workqueue_struct {int flags; int /*<<< orphan*/  cpu_pwqs; } ;
struct pool_workqueue {int /*<<< orphan*/  delayed_works; } ;

/* Variables and functions */
 int WORK_CPU_UNBOUND ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pool_workqueue* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 struct pool_workqueue* FUNC8 (struct workqueue_struct*,int /*<<< orphan*/ ) ; 

bool FUNC9(int cpu, struct workqueue_struct *wq)
{
	struct pool_workqueue *pwq;
	bool ret;

	FUNC5();
	FUNC3();

	if (cpu == WORK_CPU_UNBOUND)
		cpu = FUNC7();

	if (!(wq->flags & WQ_UNBOUND))
		pwq = FUNC2(wq->cpu_pwqs, cpu);
	else
		pwq = FUNC8(wq, FUNC0(cpu));

	ret = !FUNC1(&pwq->delayed_works);
	FUNC4();
	FUNC6();

	return ret;
}