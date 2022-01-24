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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct ipv6_ac_socklist*,int) ; 
 struct net* FUNC6 (struct sock*) ; 

int FUNC7(struct sock *sk, int ifindex, const struct in6_addr *addr)
{
	struct ipv6_pinfo *np = FUNC2(sk);
	struct net_device *dev;
	struct ipv6_ac_socklist *pac, *prev_pac;
	struct net *net = FUNC6(sk);

	FUNC0();

	prev_pac = NULL;
	for (pac = np->ipv6_ac_list; pac; pac = pac->acl_next) {
		if ((ifindex == 0 || pac->acl_ifindex == ifindex) &&
		     FUNC3(&pac->acl_addr, addr))
			break;
		prev_pac = pac;
	}
	if (!pac)
		return -ENOENT;
	if (prev_pac)
		prev_pac->acl_next = pac->acl_next;
	else
		np->ipv6_ac_list = pac->acl_next;

	dev = FUNC1(net, pac->acl_ifindex);
	if (dev)
		FUNC4(dev, &pac->acl_addr);

	FUNC5(sk, pac, sizeof(*pac));
	return 0;
}