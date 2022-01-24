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
struct tcf_proto {int /*<<< orphan*/  next; } ;
struct tcf_chain {int flushing; int /*<<< orphan*/  filter_chain_lock; int /*<<< orphan*/  filter_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcf_proto* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_chain*,int /*<<< orphan*/ *) ; 
 struct tcf_proto* FUNC5 (int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_chain*,struct tcf_proto*) ; 

__attribute__((used)) static void FUNC8(struct tcf_chain *chain, bool rtnl_held)
{
	struct tcf_proto *tp, *tp_next;

	FUNC1(&chain->filter_chain_lock);
	tp = FUNC5(chain->filter_chain, chain);
	while (tp) {
		tp_next = FUNC3(tp->next, 1);
		FUNC7(chain, tp);
		tp = tp_next;
	}
	tp = FUNC5(chain->filter_chain, chain);
	FUNC0(chain->filter_chain, NULL);
	FUNC4(chain, NULL);
	chain->flushing = true;
	FUNC2(&chain->filter_chain_lock);

	while (tp) {
		tp_next = FUNC3(tp->next, 1);
		FUNC6(tp, rtnl_held, NULL);
		tp = tp_next;
	}
}