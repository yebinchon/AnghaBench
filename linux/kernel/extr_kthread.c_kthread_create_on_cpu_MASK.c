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
struct TYPE_2__ {unsigned int cpu; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  KTHREAD_IS_PER_CPU ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned int) ; 
 struct task_struct* FUNC3 (int (*) (void*),void*,int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct task_struct*) ; 

struct task_struct *FUNC6(int (*threadfn)(void *data),
					  void *data, unsigned int cpu,
					  const char *namefmt)
{
	struct task_struct *p;

	p = FUNC3(threadfn, data, FUNC1(cpu), namefmt,
				   cpu);
	if (FUNC0(p))
		return p;
	FUNC2(p, cpu);
	/* CPU hotplug need to bind once again when unparking the thread. */
	FUNC4(KTHREAD_IS_PER_CPU, &FUNC5(p)->flags);
	FUNC5(p)->cpu = cpu;
	return p;
}