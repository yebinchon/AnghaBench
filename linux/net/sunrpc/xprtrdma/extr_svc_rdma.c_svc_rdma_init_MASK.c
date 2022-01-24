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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rdma_class ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svcrdma_max_bc_requests ; 
 int /*<<< orphan*/  svcrdma_max_req_size ; 
 int /*<<< orphan*/  svcrdma_max_requests ; 
 int /*<<< orphan*/  svcrdma_ord ; 
 int /*<<< orphan*/  svcrdma_root_table ; 
 scalar_t__ svcrdma_table_header ; 

int FUNC3(void)
{
	FUNC0("SVCRDMA Module Init, register RPC RDMA transport\n");
	FUNC0("\tsvcrdma_ord      : %d\n", svcrdma_ord);
	FUNC0("\tmax_requests     : %u\n", svcrdma_max_requests);
	FUNC0("\tmax_bc_requests  : %u\n", svcrdma_max_bc_requests);
	FUNC0("\tmax_inline       : %d\n", svcrdma_max_req_size);

	if (!svcrdma_table_header)
		svcrdma_table_header =
			FUNC1(svcrdma_root_table);

	/* Register RDMA with the SVC transport switch */
	FUNC2(&svc_rdma_class);
	return 0;
}