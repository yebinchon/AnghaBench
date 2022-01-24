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
struct tcf_proto {int /*<<< orphan*/  deleting; struct tcf_proto* next; } ;
struct tcf_chain_info {struct tcf_proto** pprev; struct tcf_proto* next; } ;
struct tcf_chain {int /*<<< orphan*/  filter_chain_lock; struct tcf_proto* filter_chain; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_proto*,struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_chain*,struct tcf_proto*) ; 
 struct tcf_proto* FUNC5 (struct tcf_proto*,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_chain*,struct tcf_proto*) ; 

__attribute__((used)) static void FUNC9(struct tcf_chain *chain,
				      struct tcf_proto *tp, bool rtnl_held,
				      struct netlink_ext_ack *extack)
{
	struct tcf_chain_info chain_info;
	struct tcf_proto *tp_iter;
	struct tcf_proto **pprev;
	struct tcf_proto *next;

	FUNC2(&chain->filter_chain_lock);

	/* Atomically find and remove tp from chain. */
	for (pprev = &chain->filter_chain;
	     (tp_iter = FUNC5(*pprev, chain));
	     pprev = &tp_iter->next) {
		if (tp_iter == tp) {
			chain_info.pprev = pprev;
			chain_info.next = tp_iter->next;
			FUNC1(tp_iter->deleting);
			break;
		}
	}
	/* Verify that tp still exists and no new filters were inserted
	 * concurrently.
	 * Mark tp for deletion if it is empty.
	 */
	if (!tp_iter || !FUNC6(tp, rtnl_held)) {
		FUNC3(&chain->filter_chain_lock);
		return;
	}

	FUNC8(chain, tp);
	next = FUNC5(chain_info.next, chain);
	if (tp == chain->filter_chain)
		FUNC4(chain, next);
	FUNC0(*chain_info.pprev, next);
	FUNC3(&chain->filter_chain_lock);

	FUNC7(tp, rtnl_held, extack);
}