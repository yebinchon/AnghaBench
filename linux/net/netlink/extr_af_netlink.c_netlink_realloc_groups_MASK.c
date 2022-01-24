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
struct sock {size_t sk_protocol; } ;
struct netlink_sock {unsigned int ngroups; int /*<<< orphan*/  groups; } ;
struct TYPE_2__ {unsigned int groups; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (unsigned int) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* nl_table ; 
 struct netlink_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk)
{
	struct netlink_sock *nlk = FUNC5(sk);
	unsigned int groups;
	unsigned long *new_groups;
	int err = 0;

	FUNC3();

	groups = nl_table[sk->sk_protocol].groups;
	if (!nl_table[sk->sk_protocol].registered) {
		err = -ENOENT;
		goto out_unlock;
	}

	if (nlk->ngroups >= groups)
		goto out_unlock;

	new_groups = FUNC1(nlk->groups, FUNC0(groups), GFP_ATOMIC);
	if (new_groups == NULL) {
		err = -ENOMEM;
		goto out_unlock;
	}
	FUNC2((char *)new_groups + FUNC0(nlk->ngroups), 0,
	       FUNC0(groups) - FUNC0(nlk->ngroups));

	nlk->groups = new_groups;
	nlk->ngroups = groups;
 out_unlock:
	FUNC4();
	return err;
}