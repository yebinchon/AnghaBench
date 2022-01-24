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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_ac_socklist* ipv6_ac_list; } ;
struct ipv6_ac_socklist {int acl_ifindex; int /*<<< orphan*/  acl_addr; struct ipv6_ac_socklist* acl_next; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct ipv6_ac_socklist*,int) ; 
 struct net* FUNC6 (struct sock*) ; 

void FUNC7(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC1(sk);
	struct net_device *dev = NULL;
	struct ipv6_ac_socklist *pac;
	struct net *net = FUNC6(sk);
	int	prev_index;

	if (!np->ipv6_ac_list)
		return;

	FUNC3();
	pac = np->ipv6_ac_list;
	np->ipv6_ac_list = NULL;

	prev_index = 0;
	while (pac) {
		struct ipv6_ac_socklist *next = pac->acl_next;

		if (pac->acl_ifindex != prev_index) {
			dev = FUNC0(net, pac->acl_ifindex);
			prev_index = pac->acl_ifindex;
		}
		if (dev)
			FUNC2(dev, &pac->acl_addr);
		FUNC5(sk, pac, sizeof(*pac));
		pac = next;
	}
	FUNC4();
}