#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hlist_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  single; } ;
struct TYPE_3__ {int /*<<< orphan*/  single; } ;
struct cpuhp_step {TYPE_2__ teardown; TYPE_1__ startup; } ;
typedef  enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cpuhp_step* FUNC1 (int) ; 
 int FUNC2 (int,int,int,struct hlist_node*) ; 
 int FUNC3 (int,int,int,struct hlist_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int cpu, enum cpuhp_state state, bool bringup,
			    struct hlist_node *node)
{
	struct cpuhp_step *sp = FUNC1(state);
	int ret;

	/*
	 * If there's nothing to do, we done.
	 * Relies on the union for multi_instance.
	 */
	if ((bringup && !sp->startup.single) ||
	    (!bringup && !sp->teardown.single))
		return 0;
	/*
	 * The non AP bound callbacks can fail on bringup. On teardown
	 * e.g. module removal we crash for now.
	 */
#ifdef CONFIG_SMP
	if (cpuhp_is_ap_state(state))
		ret = cpuhp_invoke_ap_callback(cpu, state, bringup, node);
	else
		ret = cpuhp_invoke_callback(cpu, state, bringup, node, NULL);
#else
	ret = FUNC3(cpu, state, bringup, node, NULL);
#endif
	FUNC0(ret && !bringup);
	return ret;
}