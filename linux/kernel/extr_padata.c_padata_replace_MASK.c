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
struct TYPE_2__ {int /*<<< orphan*/  cbcpu; int /*<<< orphan*/  pcpu; } ;
struct parallel_data {TYPE_1__ cpumask; } ;
struct padata_instance {int /*<<< orphan*/  flags; int /*<<< orphan*/  cpumask_change_notifier; struct parallel_data* pd; } ;

/* Variables and functions */
 int PADATA_CPU_PARALLEL ; 
 int PADATA_CPU_SERIAL ; 
 int /*<<< orphan*/  PADATA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct parallel_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct parallel_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct parallel_data*,struct parallel_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct padata_instance *pinst,
			   struct parallel_data *pd_new)
{
	struct parallel_data *pd_old = pinst->pd;
	int notification_mask = 0;

	pinst->flags |= PADATA_RESET;

	FUNC4(pinst->pd, pd_new);

	FUNC5();

	if (!FUNC1(pd_old->cpumask.pcpu, pd_new->cpumask.pcpu))
		notification_mask |= PADATA_CPU_PARALLEL;
	if (!FUNC1(pd_old->cpumask.cbcpu, pd_new->cpumask.cbcpu))
		notification_mask |= PADATA_CPU_SERIAL;

	FUNC2(pd_old);
	FUNC3(pd_old);

	if (notification_mask)
		FUNC0(&pinst->cpumask_change_notifier,
					     notification_mask,
					     &pd_new->cpumask);

	pinst->flags &= ~PADATA_RESET;
}