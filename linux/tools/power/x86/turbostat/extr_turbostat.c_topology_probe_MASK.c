#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cpu_topology {int dummy; } ;
struct TYPE_7__ {int logical_cpu_id; int physical_package_id; int die_id; scalar_t__ physical_node_id; int physical_core_id; scalar_t__ thread_id; int logical_node_id; } ;
struct TYPE_6__ {int num_cpus; int max_cpu_num; scalar_t__ max_node_num; int cores_per_node; int num_die; int num_packages; int nodes_per_pkg; int threads_per_core; int /*<<< orphan*/  num_cores; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIC_CPU ; 
 int /*<<< orphan*/  BIC_Core ; 
 int /*<<< orphan*/  BIC_Die ; 
 int /*<<< orphan*/  BIC_Node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIC_Package ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int CPU_SUBSET_MAXCPUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  count_cpus ; 
 int /*<<< orphan*/ * cpu_affinity_set ; 
 int /*<<< orphan*/  cpu_affinity_setsize ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * cpu_present_set ; 
 int /*<<< orphan*/  cpu_present_setsize ; 
 int /*<<< orphan*/ * cpu_subset ; 
 int /*<<< orphan*/  cpu_subset_size ; 
 TYPE_2__* cpus ; 
 int debug ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  init_thread_id ; 
 int /*<<< orphan*/  mark_cpu_present ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  summary_only ; 
 TYPE_1__ topo ; 

void FUNC17()
{
	int i;
	int max_core_id = 0;
	int max_package_id = 0;
	int max_die_id = 0;
	int max_siblings = 0;

	/* Initialize num_cpus, max_cpu_num */
	FUNC15();
	topo.num_cpus = 0;
	FUNC8(count_cpus);
	if (!summary_only && topo.num_cpus > 1)
		FUNC0(BIC_CPU);

	if (debug > 1)
		FUNC9(outf, "num_cpus %d max_cpu_num %d\n", topo.num_cpus, topo.max_cpu_num);

	cpus = FUNC5(1, (topo.max_cpu_num  + 1) * sizeof(struct cpu_topology));
	if (cpus == NULL)
		FUNC7(1, "calloc cpus");

	/*
	 * Allocate and initialize cpu_present_set
	 */
	cpu_present_set = FUNC1((topo.max_cpu_num + 1));
	if (cpu_present_set == NULL)
		FUNC7(3, "CPU_ALLOC");
	cpu_present_setsize = FUNC2((topo.max_cpu_num + 1));
	FUNC4(cpu_present_setsize, cpu_present_set);
	FUNC8(mark_cpu_present);

	/*
	 * Validate that all cpus in cpu_subset are also in cpu_present_set
	 */
	for (i = 0; i < CPU_SUBSET_MAXCPUS; ++i) {
		if (FUNC3(i, cpu_subset_size, cpu_subset))
			if (!FUNC3(i, cpu_present_setsize, cpu_present_set))
				FUNC7(1, "cpu%d not present", i);
	}

	/*
	 * Allocate and initialize cpu_affinity_set
	 */
	cpu_affinity_set = FUNC1((topo.max_cpu_num + 1));
	if (cpu_affinity_set == NULL)
		FUNC7(3, "CPU_ALLOC");
	cpu_affinity_setsize = FUNC2((topo.max_cpu_num + 1));
	FUNC4(cpu_affinity_setsize, cpu_affinity_set);

	FUNC8(init_thread_id);

	/*
	 * For online cpus
	 * find max_core_id, max_package_id
	 */
	for (i = 0; i <= topo.max_cpu_num; ++i) {
		int siblings;

		if (FUNC6(i)) {
			if (debug > 1)
				FUNC9(outf, "cpu%d NOT PRESENT\n", i);
			continue;
		}

		cpus[i].logical_cpu_id = i;

		/* get package information */
		cpus[i].physical_package_id = FUNC13(i);
		if (cpus[i].physical_package_id > max_package_id)
			max_package_id = cpus[i].physical_package_id;

		/* get die information */
		cpus[i].die_id = FUNC11(i);
		if (cpus[i].die_id > max_die_id)
			max_die_id = cpus[i].die_id;

		/* get numa node information */
		cpus[i].physical_node_id = FUNC12(&cpus[i]);
		if (cpus[i].physical_node_id > topo.max_node_num)
			topo.max_node_num = cpus[i].physical_node_id;

		/* get core information */
		cpus[i].physical_core_id = FUNC10(i);
		if (cpus[i].physical_core_id > max_core_id)
			max_core_id = cpus[i].physical_core_id;

		/* get thread information */
		siblings = FUNC14(&cpus[i]);
		if (siblings > max_siblings)
			max_siblings = siblings;
		if (cpus[i].thread_id == 0)
			topo.num_cores++;
	}

	topo.cores_per_node = max_core_id + 1;
	if (debug > 1)
		FUNC9(outf, "max_core_id %d, sizing for %d cores per package\n",
			max_core_id, topo.cores_per_node);
	if (!summary_only && topo.cores_per_node > 1)
		FUNC0(BIC_Core);

	topo.num_die = max_die_id + 1;
	if (debug > 1)
		FUNC9(outf, "max_die_id %d, sizing for %d die\n",
				max_die_id, topo.num_die);
	if (!summary_only && topo.num_die > 1)
		FUNC0(BIC_Die);

	topo.num_packages = max_package_id + 1;
	if (debug > 1)
		FUNC9(outf, "max_package_id %d, sizing for %d packages\n",
			max_package_id, topo.num_packages);
	if (!summary_only && topo.num_packages > 1)
		FUNC0(BIC_Package);

	FUNC16();
	if (debug > 1)
		FUNC9(outf, "nodes_per_pkg %d\n", topo.nodes_per_pkg);
	if (!summary_only && topo.nodes_per_pkg > 1)
		FUNC0(BIC_Node);

	topo.threads_per_core = max_siblings;
	if (debug > 1)
		FUNC9(outf, "max_siblings %d\n", max_siblings);

	if (debug < 1)
		return;

	for (i = 0; i <= topo.max_cpu_num; ++i) {
		if (FUNC6(i))
			continue;
		FUNC9(outf,
			"cpu %d pkg %d die %d node %ld lnode %d core %d thread %ld\n",
			i, cpus[i].physical_package_id, cpus[i].die_id,
			cpus[i].physical_node_id,
			cpus[i].logical_node_id,
			cpus[i].physical_core_id,
			cpus[i].thread_id);
	}

}