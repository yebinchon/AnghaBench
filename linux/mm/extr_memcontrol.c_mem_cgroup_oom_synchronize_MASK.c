#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  entry; TYPE_3__* private; int /*<<< orphan*/  func; scalar_t__ flags; } ;
struct oom_wait_info {TYPE_1__ wait; struct mem_cgroup* memcg; } ;
struct mem_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/  oom_kill_disable; } ;
struct TYPE_5__ {struct mem_cgroup* memcg_in_oom; int /*<<< orphan*/  memcg_oom_order; int /*<<< orphan*/  memcg_oom_gfp_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_cgroup*) ; 
 int FUNC5 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC7 (struct mem_cgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC9 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  memcg_oom_waitq ; 
 int /*<<< orphan*/  memcg_oom_wake_function ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

bool FUNC12(bool handle)
{
	struct mem_cgroup *memcg = current->memcg_in_oom;
	struct oom_wait_info owait;
	bool locked;

	/* OOM is global, do not handle */
	if (!memcg)
		return false;

	if (!handle)
		goto cleanup;

	owait.memcg = memcg;
	owait.wait.flags = 0;
	owait.wait.func = memcg_oom_wake_function;
	owait.wait.private = current;
	FUNC0(&owait.wait.entry);

	FUNC10(&memcg_oom_waitq, &owait.wait, TASK_KILLABLE);
	FUNC3(memcg);

	locked = FUNC5(memcg);

	if (locked)
		FUNC4(memcg);

	if (locked && !memcg->oom_kill_disable) {
		FUNC8(memcg);
		FUNC2(&memcg_oom_waitq, &owait.wait);
		FUNC7(memcg, current->memcg_oom_gfp_mask,
					 current->memcg_oom_order);
	} else {
		FUNC11();
		FUNC8(memcg);
		FUNC2(&memcg_oom_waitq, &owait.wait);
	}

	if (locked) {
		FUNC6(memcg);
		/*
		 * There is no guarantee that an OOM-lock contender
		 * sees the wakeups triggered by the OOM kill
		 * uncharges.  Wake any sleepers explicitely.
		 */
		FUNC9(memcg);
	}
cleanup:
	current->memcg_in_oom = NULL;
	FUNC1(&memcg->css);
	return true;
}