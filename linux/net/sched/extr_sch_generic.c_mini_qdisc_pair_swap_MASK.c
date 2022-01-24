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
struct tcf_proto {int dummy; } ;
struct mini_Qdisc {int /*<<< orphan*/  rcu; struct tcf_proto* filter_list; } ;
struct mini_Qdisc_pair {int /*<<< orphan*/ * p_miniq; struct mini_Qdisc miniq2; struct mini_Qdisc miniq1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mini_qdisc_rcu_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mini_Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mini_Qdisc* FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(struct mini_Qdisc_pair *miniqp,
			  struct tcf_proto *tp_head)
{
	/* Protected with chain0->filter_chain_lock.
	 * Can't access chain directly because tp_head can be NULL.
	 */
	struct mini_Qdisc *miniq_old =
		FUNC4(*miniqp->p_miniq, 1);
	struct mini_Qdisc *miniq;

	if (!tp_head) {
		FUNC0(*miniqp->p_miniq, NULL);
		/* Wait for flying RCU callback before it is freed. */
		FUNC3();
		return;
	}

	miniq = !miniq_old || miniq_old == &miniqp->miniq2 ?
		&miniqp->miniq1 : &miniqp->miniq2;

	/* We need to make sure that readers won't see the miniq
	 * we are about to modify. So wait until previous call_rcu callback
	 * is done.
	 */
	FUNC3();
	miniq->filter_list = tp_head;
	FUNC2(*miniqp->p_miniq, miniq);

	if (miniq_old)
		/* This is counterpart of the rcu barriers above. We need to
		 * block potential new user of miniq_old until all readers
		 * are not seeing it.
		 */
		FUNC1(&miniq_old->rcu, mini_qdisc_rcu_func);
}