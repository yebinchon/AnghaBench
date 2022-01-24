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
struct rcu_head {int /*<<< orphan*/  (* func ) (struct rcu_head*) ;} ;
typedef  int /*<<< orphan*/  (* rcu_callback_t ) (struct rcu_head*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct rcu_head*),int /*<<< orphan*/  (*) (struct rcu_head*)) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  rcu_callback_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct rcu_head*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct rcu_head*,unsigned long) ; 

__attribute__((used)) static inline bool FUNC7(const char *rn, struct rcu_head *head)
{
	rcu_callback_t f;
	unsigned long offset = (unsigned long)head->func;

	FUNC3(&rcu_callback_map);
	if (FUNC1(offset)) {
		FUNC6(rn, head, offset);
		FUNC2((void *)head - offset);
		FUNC4(&rcu_callback_map);
		return true;
	} else {
		FUNC5(rn, head);
		f = head->func;
		FUNC0(head->func, (rcu_callback_t)0L);
		f(head);
		FUNC4(&rcu_callback_map);
		return false;
	}
}