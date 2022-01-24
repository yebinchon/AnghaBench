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
struct workqueue_struct {int flags; int /*<<< orphan*/  mutex; struct pool_workqueue* dfl_pwq; int /*<<< orphan*/  name; TYPE_3__* unbound_attrs; } ;
struct workqueue_attrs {int /*<<< orphan*/ * cpumask; } ;
struct pool_workqueue {TYPE_1__* pool; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_6__ {scalar_t__ no_numa; } ;
struct TYPE_5__ {int /*<<< orphan*/  cpumask; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_2__* attrs; } ;

/* Variables and functions */
 int WQ_UNBOUND ; 
 struct pool_workqueue* FUNC0 (struct workqueue_struct*,struct workqueue_attrs*) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_attrs*,TYPE_3__*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pool_workqueue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pool_workqueue* FUNC8 (struct workqueue_struct*,int,struct pool_workqueue*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pool_workqueue*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct pool_workqueue* FUNC13 (struct workqueue_struct*,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq_numa_enabled ; 
 int /*<<< orphan*/  wq_pool_mutex ; 
 struct workqueue_attrs* wq_update_unbound_numa_attrs_buf ; 

__attribute__((used)) static void FUNC15(struct workqueue_struct *wq, int cpu,
				   bool online)
{
	int node = FUNC2(cpu);
	int cpu_off = online ? -1 : cpu;
	struct pool_workqueue *old_pwq = NULL, *pwq;
	struct workqueue_attrs *target_attrs;
	cpumask_t *cpumask;

	FUNC5(&wq_pool_mutex);

	if (!wq_numa_enabled || !(wq->flags & WQ_UNBOUND) ||
	    wq->unbound_attrs->no_numa)
		return;

	/*
	 * We don't wanna alloc/free wq_attrs for each wq for each CPU.
	 * Let's use a preallocated one.  The following buf is protected by
	 * CPU hotplug exclusion.
	 */
	target_attrs = wq_update_unbound_numa_attrs_buf;
	cpumask = target_attrs->cpumask;

	FUNC1(target_attrs, wq->unbound_attrs);
	pwq = FUNC13(wq, node);

	/*
	 * Let's determine what needs to be done.  If the target cpumask is
	 * different from the default pwq's, we need to compare it to @pwq's
	 * and create a new one if they don't match.  If the target cpumask
	 * equals the default pwq's, the default pwq should be used.
	 */
	if (FUNC14(wq->dfl_pwq->pool->attrs, node, cpu_off, cpumask)) {
		if (FUNC3(cpumask, pwq->pool->attrs->cpumask))
			return;
	} else {
		goto use_dfl_pwq;
	}

	/* create a new pwq */
	pwq = FUNC0(wq, target_attrs);
	if (!pwq) {
		FUNC9("workqueue: allocation failed while updating NUMA affinity of \"%s\"\n",
			wq->name);
		goto use_dfl_pwq;
	}

	/* Install the new pwq. */
	FUNC6(&wq->mutex);
	old_pwq = FUNC8(wq, node, pwq);
	goto out_unlock;

use_dfl_pwq:
	FUNC6(&wq->mutex);
	FUNC11(&wq->dfl_pwq->pool->lock);
	FUNC4(wq->dfl_pwq);
	FUNC12(&wq->dfl_pwq->pool->lock);
	old_pwq = FUNC8(wq, node, wq->dfl_pwq);
out_unlock:
	FUNC7(&wq->mutex);
	FUNC10(old_pwq);
}