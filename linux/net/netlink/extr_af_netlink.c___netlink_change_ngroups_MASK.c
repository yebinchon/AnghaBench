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
struct sock {size_t sk_protocol; } ;
struct netlink_table {unsigned int groups; int /*<<< orphan*/  listeners; } ;
struct listeners {int /*<<< orphan*/  masks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct listeners*,int /*<<< orphan*/ ) ; 
 struct listeners* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct listeners* FUNC4 (int /*<<< orphan*/ ) ; 
 struct netlink_table* nl_table ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct listeners*) ; 

int FUNC6(struct sock *sk, unsigned int groups)
{
	struct listeners *new, *old;
	struct netlink_table *tbl = &nl_table[sk->sk_protocol];

	if (groups < 32)
		groups = 32;

	if (FUNC0(tbl->groups) < FUNC0(groups)) {
		new = FUNC2(sizeof(*new) + FUNC0(groups), GFP_ATOMIC);
		if (!new)
			return -ENOMEM;
		old = FUNC4(tbl->listeners);
		FUNC3(new->masks, old->masks, FUNC0(tbl->groups));
		FUNC5(tbl->listeners, new);

		FUNC1(old, rcu);
	}
	tbl->groups = groups;

	return 0;
}