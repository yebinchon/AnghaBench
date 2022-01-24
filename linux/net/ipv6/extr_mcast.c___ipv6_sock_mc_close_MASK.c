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
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  ipv6_mc_list; } ;
struct ipv6_mc_socklist {int /*<<< orphan*/  addr; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  next; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct ipv6_mc_socklist*,struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipv6_mc_socklist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct ipv6_mc_socklist* FUNC8 (int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC5(sk);
	struct ipv6_mc_socklist *mc_lst;
	struct net *net = FUNC9(sk);

	FUNC0();

	while ((mc_lst = FUNC8(np->ipv6_mc_list)) != NULL) {
		struct net_device *dev;

		np->ipv6_mc_list = mc_lst->next;

		dev = FUNC1(net, mc_lst->ifindex);
		if (dev) {
			struct inet6_dev *idev = FUNC2(dev);

			(void) FUNC6(sk, mc_lst, idev);
			if (idev)
				FUNC3(idev, &mc_lst->addr);
		} else
			(void) FUNC6(sk, mc_lst, NULL);

		FUNC4(sizeof(*mc_lst), &sk->sk_omem_alloc);
		FUNC7(mc_lst, rcu);
	}
}