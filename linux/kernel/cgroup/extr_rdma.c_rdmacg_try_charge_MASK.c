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
struct rdmacg_resource_pool {int /*<<< orphan*/  usage_sum; TYPE_1__* resources; } ;
struct rdmacg_device {int dummy; } ;
struct rdma_cgroup {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  enum rdmacg_resource_type { ____Placeholder_rdmacg_resource_type } rdmacg_resource_type ;
struct TYPE_2__ {scalar_t__ usage; scalar_t__ max; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rdmacg_resource_pool*) ; 
 int FUNC1 (struct rdmacg_resource_pool*) ; 
 int RDMACG_RESOURCE_MAX ; 
 struct rdmacg_resource_pool* FUNC2 (struct rdma_cgroup*,struct rdmacg_device*) ; 
 struct rdma_cgroup* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rdma_cgroup* FUNC6 (struct rdma_cgroup*) ; 
 int /*<<< orphan*/  rdmacg_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_cgroup*,struct rdmacg_device*,struct rdma_cgroup*,int) ; 

int FUNC8(struct rdma_cgroup **rdmacg,
		      struct rdmacg_device *device,
		      enum rdmacg_resource_type index)
{
	struct rdma_cgroup *cg, *p;
	struct rdmacg_resource_pool *rpool;
	s64 new;
	int ret = 0;

	if (index >= RDMACG_RESOURCE_MAX)
		return -EINVAL;

	/*
	 * hold on to css, as cgroup can be removed but resource
	 * accounting happens on css.
	 */
	cg = FUNC3();

	FUNC4(&rdmacg_mutex);
	for (p = cg; p; p = FUNC6(p)) {
		rpool = FUNC2(p, device);
		if (FUNC0(rpool)) {
			ret = FUNC1(rpool);
			goto err;
		} else {
			new = rpool->resources[index].usage + 1;
			if (new > rpool->resources[index].max) {
				ret = -EAGAIN;
				goto err;
			} else {
				rpool->resources[index].usage = new;
				rpool->usage_sum++;
			}
		}
	}
	FUNC5(&rdmacg_mutex);

	*rdmacg = cg;
	return 0;

err:
	FUNC5(&rdmacg_mutex);
	FUNC7(cg, device, p, index);
	return ret;
}