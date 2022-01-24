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
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int nr_node_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cpumask_var_t *FUNC4(void)
{
	cpumask_var_t *masks;
	int node;

	masks = FUNC1(nr_node_ids, sizeof(cpumask_var_t), GFP_KERNEL);
	if (!masks)
		return NULL;

	for (node = 0; node < nr_node_ids; node++) {
		if (!FUNC3(&masks[node], GFP_KERNEL))
			goto out_unwind;
	}

	return masks;

out_unwind:
	while (--node >= 0)
		FUNC0(masks[node]);
	FUNC2(masks);
	return NULL;
}