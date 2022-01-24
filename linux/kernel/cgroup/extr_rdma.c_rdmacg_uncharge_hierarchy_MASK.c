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
struct rdmacg_device {int dummy; } ;
struct rdma_cgroup {int /*<<< orphan*/  css; } ;
typedef  enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rdma_cgroup* FUNC3 (struct rdma_cgroup*) ; 
 int /*<<< orphan*/  rdmacg_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_cgroup*,struct rdmacg_device*,int) ; 

__attribute__((used)) static void FUNC5(struct rdma_cgroup *cg,
				     struct rdmacg_device *device,
				     struct rdma_cgroup *stop_cg,
				     enum rdmacg_resource_type index)
{
	struct rdma_cgroup *p;

	FUNC1(&rdmacg_mutex);

	for (p = cg; p != stop_cg; p = FUNC3(p))
		FUNC4(p, device, index);

	FUNC2(&rdmacg_mutex);

	FUNC0(&cg->css);
}