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
typedef  scalar_t__ u32 ;
struct tcf_proto {scalar_t__ prio; int /*<<< orphan*/  next; int /*<<< orphan*/  deleting; } ;
struct tcf_chain {int /*<<< orphan*/  filter_chain_lock; int /*<<< orphan*/  filter_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcf_proto* FUNC3 (int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*) ; 
 scalar_t__ FUNC5 (struct tcf_proto*) ; 

__attribute__((used)) static struct tcf_proto *
FUNC6(struct tcf_chain *chain, struct tcf_proto *tp)
{
	u32 prio = 0;

	FUNC0();
	FUNC1(&chain->filter_chain_lock);

	if (!tp) {
		tp = FUNC3(chain->filter_chain, chain);
	} else if (FUNC5(tp)) {
		/* 'deleting' flag is set and chain->filter_chain_lock was
		 * unlocked, which means next pointer could be invalid. Restart
		 * search.
		 */
		prio = tp->prio + 1;
		tp = FUNC3(chain->filter_chain, chain);

		for (; tp; tp = FUNC3(tp->next, chain))
			if (!tp->deleting && tp->prio >= prio)
				break;
	} else {
		tp = FUNC3(tp->next, chain);
	}

	if (tp)
		FUNC4(tp);

	FUNC2(&chain->filter_chain_lock);

	return tp;
}