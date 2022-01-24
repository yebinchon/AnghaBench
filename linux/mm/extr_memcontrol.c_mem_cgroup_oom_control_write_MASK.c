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
typedef  int u64 ;
struct mem_cgroup {int oom_kill_disable; } ;
struct cgroup_subsys_state {int /*<<< orphan*/  parent; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct mem_cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 

__attribute__((used)) static int FUNC2(struct cgroup_subsys_state *css,
	struct cftype *cft, u64 val)
{
	struct mem_cgroup *memcg = FUNC0(css);

	/* cannot set to root cgroup and only 0 and 1 are allowed */
	if (!css->parent || !((val == 0) || (val == 1)))
		return -EINVAL;

	memcg->oom_kill_disable = val;
	if (!val)
		FUNC1(memcg);

	return 0;
}