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
struct cgroup_subsys_state {int dummy; } ;
struct rdma_cgroup {struct cgroup_subsys_state css; int /*<<< orphan*/  rpools; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cgroup_subsys_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rdma_cgroup* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cgroup_subsys_state *
FUNC3(struct cgroup_subsys_state *parent)
{
	struct rdma_cgroup *cg;

	cg = FUNC2(sizeof(*cg), GFP_KERNEL);
	if (!cg)
		return FUNC0(-ENOMEM);

	FUNC1(&cg->rpools);
	return &cg->css;
}