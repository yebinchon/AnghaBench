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
struct irq_affinity_desc {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct irq_affinity_desc*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  cpu_present_mask ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(unsigned int startvec, unsigned int numvecs,
				    unsigned int firstvec,
				    struct irq_affinity_desc *masks)
{
	unsigned int curvec = startvec, nr_present = 0, nr_others = 0;
	cpumask_var_t *node_to_cpumask;
	cpumask_var_t nmsk, npresmsk;
	int ret = -ENOMEM;

	if (!FUNC9(&nmsk, GFP_KERNEL))
		return ret;

	if (!FUNC9(&npresmsk, GFP_KERNEL))
		goto fail_nmsk;

	node_to_cpumask = FUNC2();
	if (!node_to_cpumask)
		goto fail_npresmsk;

	/* Stabilize the cpumasks */
	FUNC7();
	FUNC3(node_to_cpumask);

	/* Spread on present CPUs starting from affd->pre_vectors */
	ret = FUNC1(curvec, numvecs, firstvec,
					 node_to_cpumask, cpu_present_mask,
					 nmsk, masks);
	if (ret < 0)
		goto fail_build_affinity;
	nr_present = ret;

	/*
	 * Spread on non present CPUs starting from the next vector to be
	 * handled. If the spreading of present CPUs already exhausted the
	 * vector space, assign the non present CPUs to the already spread
	 * out vectors.
	 */
	if (nr_present >= numvecs)
		curvec = firstvec;
	else
		curvec = firstvec + nr_present;
	FUNC4(npresmsk, cpu_possible_mask, cpu_present_mask);
	ret = FUNC1(curvec, numvecs, firstvec,
					 node_to_cpumask, npresmsk, nmsk,
					 masks);
	if (ret >= 0)
		nr_others = ret;

 fail_build_affinity:
	FUNC8();

	if (ret >= 0)
		FUNC0(nr_present + nr_others < numvecs);

	FUNC6(node_to_cpumask);

 fail_npresmsk:
	FUNC5(npresmsk);

 fail_nmsk:
	FUNC5(nmsk);
	return ret < 0 ? ret : 0;
}