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
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
struct cpuset {int /*<<< orphan*/  css; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int private; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
#define  FILE_CPULIST 129 
#define  FILE_MEMLIST 128 
 struct cpuset* FUNC0 (struct cpuset*) ; 
 int /*<<< orphan*/  cpuset_hotplug_work ; 
 int /*<<< orphan*/  cpuset_migrate_mm_wq ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 struct cpuset* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC12 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 (char*) ; 
 int FUNC17 (struct cpuset*,struct cpuset*,char*) ; 
 int FUNC18 (struct cpuset*,struct cpuset*,char*) ; 

__attribute__((used)) static ssize_t FUNC19(struct kernfs_open_file *of,
				    char *buf, size_t nbytes, loff_t off)
{
	struct cpuset *cs = FUNC1(FUNC12(of));
	struct cpuset *trialcs;
	int retval = -ENODEV;

	buf = FUNC16(buf);

	/*
	 * CPU or memory hotunplug may leave @cs w/o any execution
	 * resources, in which case the hotplug code asynchronously updates
	 * configuration and transfers all tasks to the nearest ancestor
	 * which can execute.
	 *
	 * As writes to "cpus" or "mems" may restore @cs's execution
	 * resources, wait for the previously scheduled operations before
	 * proceeding, so that we don't end up keep removing tasks added
	 * after execution capability is restored.
	 *
	 * cpuset_hotplug_work calls back into cgroup core via
	 * cgroup_transfer_tasks() and waiting for it from a cgroupfs
	 * operation like this one can lead to a deadlock through kernfs
	 * active_ref protection.  Let's break the protection.  Losing the
	 * protection is okay as we check whether @cs is online after
	 * grabbing cpuset_mutex anyway.  This only happens on the legacy
	 * hierarchies.
	 */
	FUNC2(&cs->css);
	FUNC9(of->kn);
	FUNC4(&cpuset_hotplug_work);

	FUNC7();
	FUNC13(&cpuset_rwsem);
	if (!FUNC8(cs))
		goto out_unlock;

	trialcs = FUNC0(cs);
	if (!trialcs) {
		retval = -ENOMEM;
		goto out_unlock;
	}

	switch (FUNC11(of)->private) {
	case FILE_CPULIST:
		retval = FUNC17(cs, trialcs, buf);
		break;
	case FILE_MEMLIST:
		retval = FUNC18(cs, trialcs, buf);
		break;
	default:
		retval = -EINVAL;
		break;
	}

	FUNC6(trialcs);
out_unlock:
	FUNC14(&cpuset_rwsem);
	FUNC15();
	FUNC10(of->kn);
	FUNC3(&cs->css);
	FUNC5(cpuset_migrate_mm_wq);
	return retval ?: nbytes;
}