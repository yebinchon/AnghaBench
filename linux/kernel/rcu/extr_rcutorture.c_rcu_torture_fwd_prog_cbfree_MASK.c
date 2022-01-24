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
struct rcu_fwd_cb {struct rcu_fwd_cb* rfc_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcu_fwd_cb*) ; 
 struct rcu_fwd_cb* rcu_fwd_cb_head ; 
 struct rcu_fwd_cb** rcu_fwd_cb_tail ; 
 int /*<<< orphan*/  rcu_fwd_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(void)
{
	unsigned long flags;
	unsigned long freed = 0;
	struct rcu_fwd_cb *rfcp;

	for (;;) {
		FUNC2(&rcu_fwd_lock, flags);
		rfcp = rcu_fwd_cb_head;
		if (!rfcp) {
			FUNC3(&rcu_fwd_lock, flags);
			break;
		}
		rcu_fwd_cb_head = rfcp->rfc_next;
		if (!rcu_fwd_cb_head)
			rcu_fwd_cb_tail = &rcu_fwd_cb_head;
		FUNC3(&rcu_fwd_lock, flags);
		FUNC0(rfcp);
		freed++;
		FUNC1(freed);
	}
	return freed;
}