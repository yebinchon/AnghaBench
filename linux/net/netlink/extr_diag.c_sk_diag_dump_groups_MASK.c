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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int /*<<< orphan*/ * groups; int /*<<< orphan*/  ngroups; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETLINK_DIAG_GROUPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct netlink_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, struct sk_buff *nlskb)
{
	struct netlink_sock *nlk = FUNC2(sk);

	if (nlk->groups == NULL)
		return 0;

	return FUNC1(nlskb, NETLINK_DIAG_GROUPS, FUNC0(nlk->ngroups),
		       nlk->groups);
}