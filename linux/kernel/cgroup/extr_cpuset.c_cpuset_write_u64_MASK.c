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
typedef  int /*<<< orphan*/  u64 ;
struct cpuset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef  int cpuset_filetype_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS_CPU_EXCLUSIVE ; 
 int /*<<< orphan*/  CS_MEMORY_MIGRATE ; 
 int /*<<< orphan*/  CS_MEM_EXCLUSIVE ; 
 int /*<<< orphan*/  CS_MEM_HARDWALL ; 
 int /*<<< orphan*/  CS_SCHED_LOAD_BALANCE ; 
 int /*<<< orphan*/  CS_SPREAD_PAGE ; 
 int /*<<< orphan*/  CS_SPREAD_SLAB ; 
 int EINVAL ; 
 int ENODEV ; 
#define  FILE_CPU_EXCLUSIVE 135 
#define  FILE_MEMORY_MIGRATE 134 
#define  FILE_MEMORY_PRESSURE_ENABLED 133 
#define  FILE_MEM_EXCLUSIVE 132 
#define  FILE_MEM_HARDWALL 131 
#define  FILE_SCHED_LOAD_BALANCE 130 
#define  FILE_SPREAD_PAGE 129 
#define  FILE_SPREAD_SLAB 128 
 int cpuset_memory_pressure_enabled ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 struct cpuset* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cpuset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cgroup_subsys_state *css, struct cftype *cft,
			    u64 val)
{
	struct cpuset *cs = FUNC0(css);
	cpuset_filetype_t type = cft->private;
	int retval = 0;

	FUNC1();
	FUNC3(&cpuset_rwsem);
	if (!FUNC2(cs)) {
		retval = -ENODEV;
		goto out_unlock;
	}

	switch (type) {
	case FILE_CPU_EXCLUSIVE:
		retval = FUNC6(CS_CPU_EXCLUSIVE, cs, val);
		break;
	case FILE_MEM_EXCLUSIVE:
		retval = FUNC6(CS_MEM_EXCLUSIVE, cs, val);
		break;
	case FILE_MEM_HARDWALL:
		retval = FUNC6(CS_MEM_HARDWALL, cs, val);
		break;
	case FILE_SCHED_LOAD_BALANCE:
		retval = FUNC6(CS_SCHED_LOAD_BALANCE, cs, val);
		break;
	case FILE_MEMORY_MIGRATE:
		retval = FUNC6(CS_MEMORY_MIGRATE, cs, val);
		break;
	case FILE_MEMORY_PRESSURE_ENABLED:
		cpuset_memory_pressure_enabled = !!val;
		break;
	case FILE_SPREAD_PAGE:
		retval = FUNC6(CS_SPREAD_PAGE, cs, val);
		break;
	case FILE_SPREAD_SLAB:
		retval = FUNC6(CS_SPREAD_SLAB, cs, val);
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