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
struct rdmacg_resource_pool {int /*<<< orphan*/  dev_node; int /*<<< orphan*/  cg_node; struct rdmacg_device* device; } ;
struct rdmacg_device {int /*<<< orphan*/  rpools; } ;
struct rdma_cgroup {int /*<<< orphan*/  rpools; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rdmacg_resource_pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rdmacg_resource_pool* FUNC2 (struct rdma_cgroup*,struct rdmacg_device*) ; 
 struct rdmacg_resource_pool* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rdmacg_resource_pool*) ; 

__attribute__((used)) static struct rdmacg_resource_pool *
FUNC6(struct rdma_cgroup *cg, struct rdmacg_device *device)
{
	struct rdmacg_resource_pool *rpool;

	rpool = FUNC2(cg, device);
	if (rpool)
		return rpool;

	rpool = FUNC3(sizeof(*rpool), GFP_KERNEL);
	if (!rpool)
		return FUNC0(-ENOMEM);

	rpool->device = device;
	FUNC5(rpool);

	FUNC1(&rpool->cg_node);
	FUNC1(&rpool->dev_node);
	FUNC4(&rpool->cg_node, &cg->rpools);
	FUNC4(&rpool->dev_node, &device->rpools);
	return rpool;
}