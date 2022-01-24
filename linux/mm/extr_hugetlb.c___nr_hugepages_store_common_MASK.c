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
struct hstate {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int EINVAL ; 
 int NUMA_NO_NODE ; 
 size_t N_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct hstate*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * node_states ; 
 int FUNC4 (struct hstate*,unsigned long,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(bool obey_mempolicy,
					   struct hstate *h, int nid,
					   unsigned long count, size_t len)
{
	int err;
	nodemask_t nodes_allowed, *n_mask;

	if (FUNC1(h) && !FUNC0())
		return -EINVAL;

	if (nid == NUMA_NO_NODE) {
		/*
		 * global hstate attribute
		 */
		if (!(obey_mempolicy &&
				FUNC2(&nodes_allowed)))
			n_mask = &node_states[N_MEMORY];
		else
			n_mask = &nodes_allowed;
	} else {
		/*
		 * Node specific request.  count adjustment happens in
		 * set_max_huge_pages() after acquiring hugetlb_lock.
		 */
		FUNC3(&nodes_allowed, nid);
		n_mask = &nodes_allowed;
	}

	err = FUNC4(h, count, nid, n_mask);

	return err ? err : len;
}