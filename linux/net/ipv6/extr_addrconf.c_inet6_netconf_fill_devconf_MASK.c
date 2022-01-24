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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netconfmsg {int /*<<< orphan*/  ncm_family; } ;
struct ipv6_devconf {int forwarding; int mc_forwarding; int proxy_ndp; int ignore_routes_with_linkdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int NETCONFA_ALL ; 
 int NETCONFA_FORWARDING ; 
 int NETCONFA_IFINDEX ; 
 int NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN ; 
 int NETCONFA_MC_FORWARDING ; 
 int NETCONFA_PROXY_NEIGH ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct netconfmsg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, int ifindex,
				      struct ipv6_devconf *devconf, u32 portid,
				      u32 seq, int event, unsigned int flags,
				      int type)
{
	struct nlmsghdr  *nlh;
	struct netconfmsg *ncm;
	bool all = false;

	nlh = FUNC4(skb, portid, seq, event, sizeof(struct netconfmsg),
			flags);
	if (!nlh)
		return -EMSGSIZE;

	if (type == NETCONFA_ALL)
		all = true;

	ncm = FUNC2(nlh);
	ncm->ncm_family = AF_INET6;

	if (FUNC0(skb, NETCONFA_IFINDEX, ifindex) < 0)
		goto nla_put_failure;

	if (!devconf)
		goto out;

	if ((all || type == NETCONFA_FORWARDING) &&
	    FUNC0(skb, NETCONFA_FORWARDING, devconf->forwarding) < 0)
		goto nla_put_failure;
#ifdef CONFIG_IPV6_MROUTE
	if ((all || type == NETCONFA_MC_FORWARDING) &&
	    nla_put_s32(skb, NETCONFA_MC_FORWARDING,
			devconf->mc_forwarding) < 0)
		goto nla_put_failure;
#endif
	if ((all || type == NETCONFA_PROXY_NEIGH) &&
	    FUNC0(skb, NETCONFA_PROXY_NEIGH, devconf->proxy_ndp) < 0)
		goto nla_put_failure;

	if ((all || type == NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN) &&
	    FUNC0(skb, NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN,
			devconf->ignore_routes_with_linkdown) < 0)
		goto nla_put_failure;

out:
	FUNC3(skb, nlh);
	return 0;

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}