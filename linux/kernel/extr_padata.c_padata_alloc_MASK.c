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
struct parallel_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cbcpu; int /*<<< orphan*/  pcpu; } ;
struct padata_instance {void* parallel_wq; void* serial_wq; TYPE_1__ cpumask; int /*<<< orphan*/  node; int /*<<< orphan*/  lock; int /*<<< orphan*/  kobj; int /*<<< orphan*/  cpumask_change_notifier; scalar_t__ flags; int /*<<< orphan*/  pd; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WQ_CPU_INTENSIVE ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  hp_online ; 
 int /*<<< orphan*/  FUNC8 (struct padata_instance*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct padata_instance* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct parallel_data* FUNC12 (struct padata_instance*,struct cpumask const*,struct cpumask const*) ; 
 int /*<<< orphan*/  padata_attr_type ; 
 int /*<<< orphan*/  FUNC13 (struct padata_instance*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct parallel_data*) ; 

__attribute__((used)) static struct padata_instance *FUNC16(const char *name,
					    const struct cpumask *pcpumask,
					    const struct cpumask *cbcpumask)
{
	struct padata_instance *pinst;
	struct parallel_data *pd = NULL;

	pinst = FUNC10(sizeof(struct padata_instance), GFP_KERNEL);
	if (!pinst)
		goto err;

	pinst->parallel_wq = FUNC2("%s_parallel", WQ_UNBOUND, 0,
					     name);
	if (!pinst->parallel_wq)
		goto err_free_inst;

	FUNC7();

	pinst->serial_wq = FUNC2("%s_serial", WQ_MEM_RECLAIM |
					   WQ_CPU_INTENSIVE, 1, name);
	if (!pinst->serial_wq)
		goto err_put_cpus;

	if (!FUNC1(&pinst->cpumask.pcpu, GFP_KERNEL))
		goto err_free_serial_wq;
	if (!FUNC1(&pinst->cpumask.cbcpu, GFP_KERNEL)) {
		FUNC6(pinst->cpumask.pcpu);
		goto err_free_serial_wq;
	}
	if (!FUNC13(pinst, pcpumask) ||
	    !FUNC13(pinst, cbcpumask))
		goto err_free_masks;

	pd = FUNC12(pinst, pcpumask, cbcpumask);
	if (!pd)
		goto err_free_masks;

	FUNC15(pinst->pd, pd);

	FUNC4(pinst->cpumask.pcpu, pcpumask);
	FUNC4(pinst->cpumask.cbcpu, cbcpumask);

	pinst->flags = 0;

	FUNC0(&pinst->cpumask_change_notifier);
	FUNC9(&pinst->kobj, &padata_attr_type);
	FUNC11(&pinst->lock);

#ifdef CONFIG_HOTPLUG_CPU
	cpuhp_state_add_instance_nocalls_cpuslocked(hp_online, &pinst->node);
#endif

	FUNC14();

	return pinst;

err_free_masks:
	FUNC6(pinst->cpumask.pcpu);
	FUNC6(pinst->cpumask.cbcpu);
err_free_serial_wq:
	FUNC5(pinst->serial_wq);
err_put_cpus:
	FUNC14();
	FUNC5(pinst->parallel_wq);
err_free_inst:
	FUNC8(pinst);
err:
	return NULL;
}