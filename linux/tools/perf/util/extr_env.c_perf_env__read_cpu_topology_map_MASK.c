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
struct perf_env {int nr_cpus_avail; TYPE_1__* cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  die_id; int /*<<< orphan*/  socket_id; int /*<<< orphan*/  core_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct perf_env *env)
{
	int cpu, nr_cpus;

	if (env->cpu != NULL)
		return 0;

	if (env->nr_cpus_avail == 0)
		env->nr_cpus_avail = FUNC1();

	nr_cpus = env->nr_cpus_avail;
	if (nr_cpus == -1)
		return -EINVAL;

	env->cpu = FUNC0(nr_cpus, sizeof(env->cpu[0]));
	if (env->cpu == NULL)
		return -ENOMEM;

	for (cpu = 0; cpu < nr_cpus; ++cpu) {
		env->cpu[cpu].core_id	= FUNC2(cpu);
		env->cpu[cpu].socket_id	= FUNC4(cpu);
		env->cpu[cpu].die_id	= FUNC3(cpu);
	}

	env->nr_cpus_avail = nr_cpus;
	return 0;
}