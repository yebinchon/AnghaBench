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
struct rcu_head {int /*<<< orphan*/ * next; scalar_t__ func; } ;
struct rcu_data {int /*<<< orphan*/  cblist; } ;
typedef  scalar_t__ rcu_callback_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RCU_NOCB_CPU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RCU_SCHEDULER_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct rcu_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcu_data*,struct rcu_head*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct rcu_data*,int,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (struct rcu_head*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  rcu_data ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  rcu_leak_callback ; 
 scalar_t__ FUNC11 (struct rcu_data*,struct rcu_head*,int*,unsigned long) ; 
 scalar_t__ rcu_scheduler_active ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct rcu_head*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 
 struct rcu_data* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct rcu_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct rcu_head*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static void
FUNC23(struct rcu_head *head, rcu_callback_t func, bool lazy)
{
	unsigned long flags;
	struct rcu_data *rdp;
	bool was_alldone;

	/* Misaligned rcu_head! */
	FUNC2((unsigned long)head & (sizeof(void *) - 1));

	if (FUNC7(head)) {
		/*
		 * Probable double call_rcu(), so leak the callback.
		 * Use rcu:rcu_callback trace event to find the previous
		 * time callback was passed to __call_rcu().
		 */
		FUNC1(1, "__call_rcu(): Double-freed CB %p->%pS()!!!\n",
			  head, head->func);
		FUNC3(head->func, rcu_leak_callback);
		return;
	}
	head->func = func;
	head->next = NULL;
	FUNC9(flags);
	rdp = FUNC19(&rcu_data);

	/* Add the callback to our list. */
	if (FUNC22(!FUNC15(&rdp->cblist))) {
		// This can trigger due to call_rcu() from offline CPU:
		FUNC2(rcu_scheduler_active != RCU_SCHEDULER_INACTIVE);
		FUNC2(!FUNC10());
		// Very early boot, before rcu_init().  Initialize if needed
		// and then drop through to queue the callback.
		if (FUNC12(&rdp->cblist))
			FUNC14(&rdp->cblist);
	}
	if (FUNC11(rdp, head, &was_alldone, flags))
		return; // Enqueued onto ->nocb_bypass, so just leave.
	/* If we get here, rcu_nocb_try_bypass() acquired ->nocb_lock. */
	FUNC13(&rdp->cblist, head, lazy);
	if (FUNC6((unsigned long)func))
		FUNC21(rcu_state.name, head,
					 (unsigned long)func,
					 FUNC18(&rdp->cblist),
					 FUNC17(&rdp->cblist));
	else
		FUNC20(rcu_state.name, head,
				   FUNC18(&rdp->cblist),
				   FUNC17(&rdp->cblist));

	/* Go handle any RCU core processing required. */
	if (FUNC0(CONFIG_RCU_NOCB_CPU) &&
	    FUNC22(FUNC16(&rdp->cblist))) {
		FUNC5(rdp, was_alldone, flags); /* unlocks */
	} else {
		FUNC4(rdp, head, flags);
		FUNC8(flags);
	}
}