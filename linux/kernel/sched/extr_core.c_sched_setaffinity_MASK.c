#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int flags; } ;
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_6__ {int /*<<< orphan*/  user_ns; } ;
struct TYPE_5__ {TYPE_1__* rd; } ;
struct TYPE_4__ {int /*<<< orphan*/  span; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 long ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PF_NO_SETAFFINITY ; 
 int FUNC0 (struct task_struct*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 struct task_struct* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (struct task_struct*) ; 
 scalar_t__ FUNC17 (struct task_struct*) ; 
 TYPE_2__* FUNC18 (struct task_struct*) ; 

long FUNC19(pid_t pid, const struct cpumask *in_mask)
{
	cpumask_var_t cpus_allowed, new_mask;
	struct task_struct *p;
	int retval;

	FUNC14();

	p = FUNC9(pid);
	if (!p) {
		FUNC15();
		return -ESRCH;
	}

	/* Prevent p going away */
	FUNC11(p);
	FUNC15();

	if (p->flags & PF_NO_SETAFFINITY) {
		retval = -EINVAL;
		goto out_put_task;
	}
	if (!FUNC2(&cpus_allowed, GFP_KERNEL)) {
		retval = -ENOMEM;
		goto out_put_task;
	}
	if (!FUNC2(&new_mask, GFP_KERNEL)) {
		retval = -ENOMEM;
		goto out_free_cpus_allowed;
	}
	retval = -EPERM;
	if (!FUNC3(p)) {
		FUNC14();
		if (!FUNC12(FUNC1(p)->user_ns, CAP_SYS_NICE)) {
			FUNC15();
			goto out_free_new_mask;
		}
		FUNC15();
	}

	retval = FUNC16(p);
	if (retval)
		goto out_free_new_mask;


	FUNC7(p, cpus_allowed);
	FUNC4(new_mask, in_mask, cpus_allowed);

	/*
	 * Since bandwidth control happens on root_domain basis,
	 * if admission test is enabled, we only admit -deadline
	 * tasks allowed to run on all the CPUs in the task's
	 * root_domain.
	 */
#ifdef CONFIG_SMP
	if (task_has_dl_policy(p) && dl_bandwidth_enabled()) {
		rcu_read_lock();
		if (!cpumask_subset(task_rq(p)->rd->span, new_mask)) {
			retval = -EBUSY;
			rcu_read_unlock();
			goto out_free_new_mask;
		}
		rcu_read_unlock();
	}
#endif
again:
	retval = FUNC0(p, new_mask, true);

	if (!retval) {
		FUNC7(p, cpus_allowed);
		if (!FUNC6(new_mask, cpus_allowed)) {
			/*
			 * We must have raced with a concurrent cpuset
			 * update. Just reset the cpus_allowed to the
			 * cpuset's cpus_allowed
			 */
			FUNC5(new_mask, cpus_allowed);
			goto again;
		}
	}
out_free_new_mask:
	FUNC10(new_mask);
out_free_cpus_allowed:
	FUNC10(cpus_allowed);
out_put_task:
	FUNC13(p);
	return retval;
}