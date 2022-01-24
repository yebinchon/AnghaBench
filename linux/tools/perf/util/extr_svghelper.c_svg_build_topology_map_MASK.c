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
struct topology {int sib_core_nr; int sib_thr_nr; int /*<<< orphan*/ * sib_thr; int /*<<< orphan*/ * sib_core; } ;
struct perf_env {int nr_sibling_cores; int nr_sibling_threads; char* sibling_cores; char* sibling_threads; int /*<<< orphan*/  nr_cpus_online; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NR_CPUS ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,struct topology*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int* topology_map ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

int FUNC8(struct perf_env *env)
{
	int i, nr_cpus;
	struct topology t;
	char *sib_core, *sib_thr;

	nr_cpus = FUNC3(env->nr_cpus_online, MAX_NR_CPUS);

	t.sib_core_nr = env->nr_sibling_cores;
	t.sib_thr_nr = env->nr_sibling_threads;
	t.sib_core = FUNC0(env->nr_sibling_cores, sizeof(cpumask_t));
	t.sib_thr = FUNC0(env->nr_sibling_threads, sizeof(cpumask_t));

	sib_core = env->sibling_cores;
	sib_thr = env->sibling_threads;

	if (!t.sib_core || !t.sib_thr) {
		FUNC1(stderr, "topology: no memory\n");
		goto exit;
	}

	for (i = 0; i < env->nr_sibling_cores; i++) {
		if (FUNC5(sib_core, &t.sib_core[i], nr_cpus)) {
			FUNC1(stderr, "topology: can't parse siblings map\n");
			goto exit;
		}

		sib_core += FUNC6(sib_core) + 1;
	}

	for (i = 0; i < env->nr_sibling_threads; i++) {
		if (FUNC5(sib_thr, &t.sib_thr[i], nr_cpus)) {
			FUNC1(stderr, "topology: can't parse siblings map\n");
			goto exit;
		}

		sib_thr += FUNC6(sib_thr) + 1;
	}

	topology_map = FUNC2(sizeof(int) * nr_cpus);
	if (!topology_map) {
		FUNC1(stderr, "topology: no memory\n");
		goto exit;
	}

	for (i = 0; i < nr_cpus; i++)
		topology_map[i] = -1;

	FUNC4(topology_map, &t, nr_cpus);

	return 0;

exit:
	FUNC7(&t.sib_core);
	FUNC7(&t.sib_thr);

	return -1;
}