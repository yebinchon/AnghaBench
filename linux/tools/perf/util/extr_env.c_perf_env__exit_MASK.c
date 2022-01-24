#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_env {int nr_numa_nodes; int caches_cnt; int nr_memory_nodes; TYPE_1__* memory_nodes; TYPE_1__* caches; TYPE_1__* numa_nodes; TYPE_1__* cpu; TYPE_1__* pmu_mappings; TYPE_1__* sibling_threads; TYPE_1__* sibling_cores; TYPE_1__* cmdline_argv; TYPE_1__* cmdline; TYPE_1__* cpuid; TYPE_1__* cpu_desc; TYPE_1__* arch; TYPE_1__* version; TYPE_1__* os_release; TYPE_1__* hostname; } ;
struct TYPE_3__ {struct TYPE_3__* set; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_env*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 

void FUNC4(struct perf_env *env)
{
	int i;

	FUNC2(env);
	FUNC3(&env->hostname);
	FUNC3(&env->os_release);
	FUNC3(&env->version);
	FUNC3(&env->arch);
	FUNC3(&env->cpu_desc);
	FUNC3(&env->cpuid);
	FUNC3(&env->cmdline);
	FUNC3(&env->cmdline_argv);
	FUNC3(&env->sibling_cores);
	FUNC3(&env->sibling_threads);
	FUNC3(&env->pmu_mappings);
	FUNC3(&env->cpu);

	for (i = 0; i < env->nr_numa_nodes; i++)
		FUNC1(env->numa_nodes[i].map);
	FUNC3(&env->numa_nodes);

	for (i = 0; i < env->caches_cnt; i++)
		FUNC0(&env->caches[i]);
	FUNC3(&env->caches);

	for (i = 0; i < env->nr_memory_nodes; i++)
		FUNC3(&env->memory_nodes[i].set);
	FUNC3(&env->memory_nodes);
}