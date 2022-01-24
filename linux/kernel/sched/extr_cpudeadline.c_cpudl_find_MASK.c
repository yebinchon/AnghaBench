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
struct sched_dl_entity {int /*<<< orphan*/  deadline; } ;
struct task_struct {int /*<<< orphan*/  cpus_ptr; struct sched_dl_entity dl; } ;
struct cpumask {int dummy; } ;
struct cpudl {TYPE_1__* elements; int /*<<< orphan*/  free_cpus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct cpudl*) ; 
 scalar_t__ FUNC3 (struct cpumask*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct cpumask*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct cpudl *cp, struct task_struct *p,
	       struct cpumask *later_mask)
{
	const struct sched_dl_entity *dl_se = &p->dl;

	if (later_mask &&
	    FUNC3(later_mask, cp->free_cpus, p->cpus_ptr)) {
		return 1;
	} else {
		int best_cpu = FUNC2(cp);

		FUNC0(best_cpu != -1 && !FUNC1(best_cpu));

		if (FUNC5(best_cpu, p->cpus_ptr) &&
		    FUNC6(dl_se->deadline, cp->elements[0].dl)) {
			if (later_mask)
				FUNC4(best_cpu, later_mask);

			return 1;
		}
	}
	return 0;
}