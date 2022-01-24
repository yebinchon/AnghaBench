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
struct cpuset {int /*<<< orphan*/  fmeter; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef  int cpuset_filetype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  FILE_CPU_EXCLUSIVE 136 
#define  FILE_MEMORY_MIGRATE 135 
#define  FILE_MEMORY_PRESSURE 134 
#define  FILE_MEMORY_PRESSURE_ENABLED 133 
#define  FILE_MEM_EXCLUSIVE 132 
#define  FILE_MEM_HARDWALL 131 
#define  FILE_SCHED_LOAD_BALANCE 130 
#define  FILE_SPREAD_PAGE 129 
#define  FILE_SPREAD_SLAB 128 
 int /*<<< orphan*/  cpuset_memory_pressure_enabled ; 
 struct cpuset* FUNC1 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpuset*) ; 

__attribute__((used)) static u64 FUNC10(struct cgroup_subsys_state *css, struct cftype *cft)
{
	struct cpuset *cs = FUNC1(css);
	cpuset_filetype_t type = cft->private;
	switch (type) {
	case FILE_CPU_EXCLUSIVE:
		return FUNC3(cs);
	case FILE_MEM_EXCLUSIVE:
		return FUNC4(cs);
	case FILE_MEM_HARDWALL:
		return FUNC5(cs);
	case FILE_SCHED_LOAD_BALANCE:
		return FUNC7(cs);
	case FILE_MEMORY_MIGRATE:
		return FUNC6(cs);
	case FILE_MEMORY_PRESSURE_ENABLED:
		return cpuset_memory_pressure_enabled;
	case FILE_MEMORY_PRESSURE:
		return FUNC2(&cs->fmeter);
	case FILE_SPREAD_PAGE:
		return FUNC8(cs);
	case FILE_SPREAD_SLAB:
		return FUNC9(cs);
	default:
		FUNC0();
	}

	/* Unreachable but makes gcc happy */
	return 0;
}