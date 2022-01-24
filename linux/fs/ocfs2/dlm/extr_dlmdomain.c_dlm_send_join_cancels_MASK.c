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
struct dlm_ctxt {int node_num; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int O2NM_MAX_NODES ; 
 int FUNC1 (struct dlm_ctxt*,int) ; 
 int FUNC2 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dlm_ctxt *dlm,
				 unsigned long *node_map,
				 unsigned int map_size)
{
	int status, tmpstat;
	int node;

	if (map_size != (FUNC0(O2NM_MAX_NODES) *
			 sizeof(unsigned long))) {
		FUNC3(ML_ERROR,
		     "map_size %u != BITS_TO_LONGS(O2NM_MAX_NODES) %u\n",
		     map_size, (unsigned)FUNC0(O2NM_MAX_NODES));
		return -EINVAL;
	}

	status = 0;
	node = -1;
	while ((node = FUNC2(node_map, O2NM_MAX_NODES,
				     node + 1)) < O2NM_MAX_NODES) {
		if (node == dlm->node_num)
			continue;

		tmpstat = FUNC1(dlm, node);
		if (tmpstat) {
			FUNC3(ML_ERROR, "Error return %d cancelling join on "
			     "node %d\n", tmpstat, node);
			if (!status)
				status = tmpstat;
		}
	}

	if (status)
		FUNC4(status);
	return status;
}