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
struct padata_instance {int /*<<< orphan*/  parallel_wq; int /*<<< orphan*/  serial_wq; TYPE_1__ cpumask; int /*<<< orphan*/  pd; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hp_online ; 
 int /*<<< orphan*/  FUNC3 (struct padata_instance*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct padata_instance*) ; 

__attribute__((used)) static void FUNC6(struct padata_instance *pinst)
{
#ifdef CONFIG_HOTPLUG_CPU
	cpuhp_state_remove_instance_nocalls(hp_online, &pinst->node);
#endif

	FUNC5(pinst);
	FUNC4(pinst->pd);
	FUNC2(pinst->cpumask.pcpu);
	FUNC2(pinst->cpumask.cbcpu);
	FUNC1(pinst->serial_wq);
	FUNC1(pinst->parallel_wq);
	FUNC3(pinst);
}