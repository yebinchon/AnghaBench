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
struct tracepoint_func {int dummy; } ;
struct tracepoint {int (* regfunc ) () ;int /*<<< orphan*/  key; int /*<<< orphan*/  funcs; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct tracepoint_func*) ; 
 int FUNC1 (struct tracepoint_func*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct tracepoint_func* FUNC3 (struct tracepoint_func**,struct tracepoint_func*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tracepoint_func*) ; 
 struct tracepoint_func* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tracepoint_func*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  tracepoints_mutex ; 

__attribute__((used)) static int FUNC11(struct tracepoint *tp,
			       struct tracepoint_func *func, int prio)
{
	struct tracepoint_func *old, *tp_funcs;
	int ret;

	if (tp->regfunc && !FUNC8(&tp->key)) {
		ret = tp->regfunc();
		if (ret < 0)
			return ret;
	}

	tp_funcs = FUNC6(tp->funcs,
			FUNC4(&tracepoints_mutex));
	old = FUNC3(&tp_funcs, func, prio);
	if (FUNC0(old)) {
		FUNC2(FUNC1(old) != -ENOMEM);
		return FUNC1(old);
	}

	/*
	 * rcu_assign_pointer has as smp_store_release() which makes sure
	 * that the new probe callbacks array is consistent before setting
	 * a pointer to it.  This array is referenced by __DO_TRACE from
	 * include/linux/tracepoint.h using rcu_dereference_sched().
	 */
	FUNC5(tp->funcs, tp_funcs);
	if (!FUNC8(&tp->key))
		FUNC9(&tp->key);
	FUNC7(old);
	return 0;
}