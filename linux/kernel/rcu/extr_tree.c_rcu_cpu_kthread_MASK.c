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
struct TYPE_2__ {int /*<<< orphan*/  rcu_cpu_has_work; int /*<<< orphan*/  rcu_cpu_kthread_status; } ;

/* Variables and functions */
 unsigned int RCU_KTHREAD_RUNNING ; 
 unsigned int RCU_KTHREAD_WAITING ; 
 unsigned int RCU_KTHREAD_YIELDING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ rcu_data ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned int cpu)
{
	unsigned int *statusp = FUNC7(&rcu_data.rcu_cpu_kthread_status);
	char work, *workp = FUNC7(&rcu_data.rcu_cpu_has_work);
	int spincnt;

	for (spincnt = 0; spincnt < 10; spincnt++) {
		FUNC8(FUNC0("Start CPU kthread@rcu_wait"));
		FUNC1();
		*statusp = RCU_KTHREAD_RUNNING;
		FUNC3();
		work = *workp;
		*workp = 0;
		FUNC4();
		if (work)
			FUNC5();
		FUNC2();
		if (*workp == 0) {
			FUNC8(FUNC0("End CPU kthread@rcu_wait"));
			*statusp = RCU_KTHREAD_WAITING;
			return;
		}
	}
	*statusp = RCU_KTHREAD_YIELDING;
	FUNC8(FUNC0("Start CPU kthread@rcu_yield"));
	FUNC6(2);
	FUNC8(FUNC0("End CPU kthread@rcu_yield"));
	*statusp = RCU_KTHREAD_WAITING;
}