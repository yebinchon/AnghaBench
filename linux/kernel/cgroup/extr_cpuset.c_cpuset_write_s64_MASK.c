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
struct cpuset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int cpuset_filetype_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  FILE_SCHED_RELAX_DOMAIN_LEVEL 128 
 int /*<<< orphan*/  cpuset_rwsem ; 
 struct cpuset* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct cpuset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cgroup_subsys_state *css, struct cftype *cft,
			    s64 val)
{
	struct cpuset *cs = FUNC0(css);
	cpuset_filetype_t type = cft->private;
	int retval = -ENODEV;

	FUNC1();
	FUNC3(&cpuset_rwsem);
	if (!FUNC2(cs))
		goto out_unlock;

	switch (type) {
	case FILE_SCHED_RELAX_DOMAIN_LEVEL:
		retval = FUNC6(cs, val);
		break;
	default:
		retval = -EINVAL;
		break;
	}
out_unlock:
	FUNC4(&cpuset_rwsem);
	FUNC5();
	return retval;
}