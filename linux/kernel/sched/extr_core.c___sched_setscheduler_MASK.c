#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int sched_reset_on_fork; int policy; scalar_t__ rt_priority; int prio; struct sched_class* sched_class; int /*<<< orphan*/  cpus_ptr; scalar_t__ mm; } ;
struct sched_class {int dummy; } ;
struct sched_attr {int sched_policy; int sched_priority; int sched_flags; scalar_t__ sched_nice; } ;
struct rq_flags {int dummy; } ;
struct rq {TYPE_3__* rd; struct task_struct* stop; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_6__ {scalar_t__ rt_runtime; } ;
struct TYPE_9__ {TYPE_1__ rt_bandwidth; } ;
struct TYPE_7__ {scalar_t__ bw; } ;
struct TYPE_8__ {TYPE_2__ dl_bw; int /*<<< orphan*/ * span; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int DEQUEUE_MOVE ; 
 int DEQUEUE_NOCLOCK ; 
 int DEQUEUE_SAVE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENQUEUE_HEAD ; 
 int EPERM ; 
 int MAX_DL_PRIO ; 
 int MAX_RT_PRIO ; 
 int MAX_USER_RT_PRIO ; 
 int /*<<< orphan*/  RLIMIT_RTPRIO ; 
 int SCHED_FLAG_ALL ; 
 int SCHED_FLAG_RESET_ON_FORK ; 
 int SCHED_FLAG_SUGOV ; 
 int SCHED_FLAG_UTIL_CLAMP ; 
 int /*<<< orphan*/  FUNC1 (struct sched_attr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,struct task_struct*,struct sched_attr const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct sched_attr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rq*,struct task_struct*,struct sched_class const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct rq*,struct task_struct*,int) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 (struct task_struct*,struct sched_attr const*) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct rq*,struct task_struct*,int) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct rq*,struct task_struct*) ; 
 scalar_t__ FUNC24 () ; 
 int FUNC25 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct task_struct*) ; 
 int FUNC27 (int) ; 
 scalar_t__ FUNC28 (struct task_struct*,int,struct sched_attr const*) ; 
 int FUNC29 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC30 (struct rq*,struct task_struct*) ; 
 int FUNC31 (struct rq*,struct task_struct*) ; 
 TYPE_4__* FUNC32 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_4__*) ; 
 scalar_t__ FUNC34 (struct task_struct*) ; 
 scalar_t__ FUNC35 (struct task_struct*) ; 
 int FUNC36 (struct task_struct*) ; 
 unsigned long FUNC37 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct rq* FUNC38 (struct task_struct*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC39 (struct rq*,struct task_struct*,struct rq_flags*) ; 
 int FUNC40 (struct task_struct*,struct sched_attr const*) ; 
 scalar_t__ FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (struct rq*) ; 
 int /*<<< orphan*/  FUNC43 (int) ; 

__attribute__((used)) static int FUNC44(struct task_struct *p,
				const struct sched_attr *attr,
				bool user, bool pi)
{
	int newprio = FUNC15(attr->sched_policy) ? MAX_DL_PRIO - 1 :
		      MAX_RT_PRIO - 1 - attr->sched_priority;
	int retval, oldprio, oldpolicy = -1, queued, running;
	int new_effective_prio, policy = attr->sched_policy;
	const struct sched_class *prev_class;
	struct rq_flags rf;
	int reset_on_fork;
	int queue_flags = DEQUEUE_SAVE | DEQUEUE_MOVE | DEQUEUE_NOCLOCK;
	struct rq *rq;

	/* The pi code expects interrupts enabled */
	FUNC0(pi && FUNC20());
recheck:
	/* Double check policy once rq lock held: */
	if (policy < 0) {
		reset_on_fork = p->sched_reset_on_fork;
		policy = oldpolicy = p->policy;
	} else {
		reset_on_fork = !!(attr->sched_flags & SCHED_FLAG_RESET_ON_FORK);

		if (!FUNC43(policy))
			return -EINVAL;
	}

	if (attr->sched_flags & ~(SCHED_FLAG_ALL | SCHED_FLAG_SUGOV))
		return -EINVAL;

	/*
	 * Valid priorities for SCHED_FIFO and SCHED_RR are
	 * 1..MAX_USER_RT_PRIO-1, valid priority for SCHED_NORMAL,
	 * SCHED_BATCH and SCHED_IDLE is 0.
	 */
	if ((p->mm && attr->sched_priority > MAX_USER_RT_PRIO-1) ||
	    (!p->mm && attr->sched_priority > MAX_RT_PRIO-1))
		return -EINVAL;
	if ((FUNC15(policy) && !FUNC1(attr)) ||
	    (FUNC27(policy) != (attr->sched_priority != 0)))
		return -EINVAL;

	/*
	 * Allow unprivileged RT tasks to decrease priority:
	 */
	if (user && !FUNC6(CAP_SYS_NICE)) {
		if (FUNC18(policy)) {
			if (attr->sched_nice < FUNC35(p) &&
			    !FUNC5(p, attr->sched_nice))
				return -EPERM;
		}

		if (FUNC27(policy)) {
			unsigned long rlim_rtprio =
					FUNC37(p, RLIMIT_RTPRIO);

			/* Can't set/change the rt policy: */
			if (policy != p->policy && !rlim_rtprio)
				return -EPERM;

			/* Can't increase priority: */
			if (attr->sched_priority > p->rt_priority &&
			    attr->sched_priority > rlim_rtprio)
				return -EPERM;
		}

		 /*
		  * Can't set/change SCHED_DEADLINE policy at all for now
		  * (safest behavior); in the future we would like to allow
		  * unprivileged DL tasks to increase their relative deadline
		  * or reduce their runtime (both ways reducing utilization)
		  */
		if (FUNC15(policy))
			return -EPERM;

		/*
		 * Treat SCHED_IDLE as nice 20. Only allow a switch to
		 * SCHED_NORMAL if the RLIMIT_NICE would normally permit it.
		 */
		if (FUNC34(p) && !FUNC19(policy)) {
			if (!FUNC5(p, FUNC35(p)))
				return -EPERM;
		}

		/* Can't change other user's priorities: */
		if (!FUNC8(p))
			return -EPERM;

		/* Normal users shall not reset the sched_reset_on_fork flag: */
		if (p->sched_reset_on_fork && !reset_on_fork)
			return -EPERM;
	}

	if (user) {
		if (attr->sched_flags & SCHED_FLAG_SUGOV)
			return -EINVAL;

		retval = FUNC29(p);
		if (retval)
			return retval;
	}

	/* Update task specific "requested" clamps */
	if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP) {
		retval = FUNC40(p, attr);
		if (retval)
			return retval;
	}

	if (pi)
		FUNC10();

	/*
	 * Make sure no PI-waiters arrive (or leave) while we are
	 * changing the priority of the task:
	 *
	 * To be able to change p->policy safely, the appropriate
	 * runqueue lock must be held.
	 */
	rq = FUNC38(p, &rf);
	FUNC42(rq);

	/*
	 * Changing the policy of the stop threads its a very bad idea:
	 */
	if (p == rq->stop) {
		retval = -EINVAL;
		goto unlock;
	}

	/*
	 * If not changing anything there's no need to proceed further,
	 * but store a possible modification of reset_on_fork.
	 */
	if (FUNC41(policy == p->policy)) {
		if (FUNC18(policy) && attr->sched_nice != FUNC35(p))
			goto change;
		if (FUNC27(policy) && attr->sched_priority != p->rt_priority)
			goto change;
		if (FUNC15(policy) && FUNC14(p, attr))
			goto change;
		if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP)
			goto change;

		p->sched_reset_on_fork = reset_on_fork;
		retval = 0;
		goto unlock;
	}
change:

	if (user) {
#ifdef CONFIG_RT_GROUP_SCHED
		/*
		 * Do not allow realtime tasks into groups that have no runtime
		 * assigned.
		 */
		if (rt_bandwidth_enabled() && rt_policy(policy) &&
				task_group(p)->rt_bandwidth.rt_runtime == 0 &&
				!task_group_is_autogroup(task_group(p))) {
			retval = -EPERM;
			goto unlock;
		}
#endif
#ifdef CONFIG_SMP
		if (dl_bandwidth_enabled() && dl_policy(policy) &&
				!(attr->sched_flags & SCHED_FLAG_SUGOV)) {
			cpumask_t *span = rq->rd->span;

			/*
			 * Don't allow tasks with an affinity mask smaller than
			 * the entire root_domain to become SCHED_DEADLINE. We
			 * will also fail if there's no bandwidth available.
			 */
			if (!cpumask_subset(span, p->cpus_ptr) ||
			    rq->rd->dl_bw.bw == 0) {
				retval = -EPERM;
				goto unlock;
			}
		}
#endif
	}

	/* Re-check policy now with rq lock held: */
	if (FUNC41(oldpolicy != -1 && oldpolicy != p->policy)) {
		policy = oldpolicy = -1;
		FUNC39(rq, p, &rf);
		if (pi)
			FUNC11();
		goto recheck;
	}

	/*
	 * If setscheduling to SCHED_DEADLINE (or changing the parameters
	 * of a SCHED_DEADLINE task) we need to check if enough bandwidth
	 * is available.
	 */
	if ((FUNC15(policy) || FUNC16(p)) && FUNC28(p, policy, attr)) {
		retval = -EBUSY;
		goto unlock;
	}

	p->sched_reset_on_fork = reset_on_fork;
	oldprio = p->prio;

	if (pi) {
		/*
		 * Take priority boosted tasks into account. If the new
		 * effective priority is unchanged, we just store the new
		 * normal parameters and do not touch the scheduler class and
		 * the runqueue. This will be done when the task deboost
		 * itself.
		 */
		new_effective_prio = FUNC25(p, newprio);
		if (new_effective_prio == oldprio)
			queue_flags &= ~DEQUEUE_MOVE;
	}

	queued = FUNC36(p);
	running = FUNC31(rq, p);
	if (queued)
		FUNC12(rq, p, queue_flags);
	if (running)
		FUNC23(rq, p);

	prev_class = p->sched_class;

	FUNC2(rq, p, attr, pi);
	FUNC3(p, attr);

	if (queued) {
		/*
		 * We enqueue to tail when the priority of a task is
		 * increased (user space view).
		 */
		if (oldprio < p->prio)
			queue_flags |= ENQUEUE_HEAD;

		FUNC17(rq, p, queue_flags);
	}
	if (running)
		FUNC30(rq, p);

	FUNC7(rq, p, prev_class, oldprio);

	/* Avoid rq from going away on us: */
	FUNC21();
	FUNC39(rq, p, &rf);

	if (pi) {
		FUNC11();
		FUNC26(p);
	}

	/* Run balance callbacks after we've adjusted the PI chain: */
	FUNC4(rq);
	FUNC22();

	return 0;

unlock:
	FUNC39(rq, p, &rf);
	if (pi)
		FUNC11();
	return retval;
}