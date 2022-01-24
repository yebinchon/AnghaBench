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
struct seq_file {int dummy; } ;
struct cpuset {int /*<<< orphan*/  subparts_cpus; int /*<<< orphan*/  effective_mems; int /*<<< orphan*/  effective_cpus; int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  cpus_allowed; } ;
typedef  int cpuset_filetype_t ;
struct TYPE_2__ {int private; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FILE_CPULIST 132 
#define  FILE_EFFECTIVE_CPULIST 131 
#define  FILE_EFFECTIVE_MEMLIST 130 
#define  FILE_MEMLIST 129 
#define  FILE_SUBPARTS_CPULIST 128 
 int /*<<< orphan*/  callback_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct seq_file *sf, void *v)
{
	struct cpuset *cs = FUNC1(FUNC4(sf));
	cpuset_filetype_t type = FUNC3(sf)->private;
	int ret = 0;

	FUNC6(&callback_lock);

	switch (type) {
	case FILE_CPULIST:
		FUNC5(sf, "%*pbl\n", FUNC0(cs->cpus_allowed));
		break;
	case FILE_MEMLIST:
		FUNC5(sf, "%*pbl\n", FUNC2(&cs->mems_allowed));
		break;
	case FILE_EFFECTIVE_CPULIST:
		FUNC5(sf, "%*pbl\n", FUNC0(cs->effective_cpus));
		break;
	case FILE_EFFECTIVE_MEMLIST:
		FUNC5(sf, "%*pbl\n", FUNC2(&cs->effective_mems));
		break;
	case FILE_SUBPARTS_CPULIST:
		FUNC5(sf, "%*pbl\n", FUNC0(cs->subparts_cpus));
		break;
	default:
		ret = -EINVAL;
	}

	FUNC7(&callback_lock);
	return ret;
}