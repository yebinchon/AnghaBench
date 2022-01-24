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
struct ipv4_devconf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BC_FORWARDING ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FORWARDING ; 
 int /*<<< orphan*/  IGNORE_ROUTES_WITH_LINKDOWN ; 
 int FUNC0 (struct ipv4_devconf,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_FORWARDING ; 
 int NETCONFA_ALL ; 
 int NETCONFA_BC_FORWARDING ; 
 int NETCONFA_FORWARDING ; 
 int NETCONFA_IFINDEX ; 
 int NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN ; 
 int NETCONFA_MC_FORWARDING ; 
 int NETCONFA_PROXY_NEIGH ; 
 int NETCONFA_RP_FILTER ; 
 int /*<<< orphan*/  PROXY_ARP ; 
 int /*<<< orphan*/  RP_FILTER ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct netconfmsg* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, int ifindex,
				     struct ipv4_devconf *devconf, u32 portid,
				     u32 seq, int event, unsigned int flags,
				     int type)
{
	struct nlmsghdr  *nlh;
	struct netconfmsg *ncm;
	bool all = false;

	nlh = FUNC5(skb, portid, seq, event, sizeof(struct netconfmsg),
			flags);
	if (!nlh)
		return -EMSGSIZE;

	if (type == NETCONFA_ALL)
		all = true;

	ncm = FUNC3(nlh);
	ncm->ncm_family = AF_INET;

	if (FUNC1(skb, NETCONFA_IFINDEX, ifindex) < 0)
		goto nla_put_failure;

	if (!devconf)
		goto out;

	if ((all || type == NETCONFA_FORWARDING) &&
	    FUNC1(skb, NETCONFA_FORWARDING,
			FUNC0(*devconf, FORWARDING)) < 0)
		goto nla_put_failure;
	if ((all || type == NETCONFA_RP_FILTER) &&
	    FUNC1(skb, NETCONFA_RP_FILTER,
			FUNC0(*devconf, RP_FILTER)) < 0)
		goto nla_put_failure;
	if ((all || type == NETCONFA_MC_FORWARDING) &&
	    FUNC1(skb, NETCONFA_MC_FORWARDING,
			FUNC0(*devconf, MC_FORWARDING)) < 0)
		goto nla_put_failure;
	if ((all || type == NETCONFA_BC_FORWARDING) &&
	    FUNC1(skb, NETCONFA_BC_FORWARDING,
			FUNC0(*devconf, BC_FORWARDING)) < 0)
		goto nla_put_failure;
	if ((all || type == NETCONFA_PROXY_NEIGH) &&
	    FUNC1(skb, NETCONFA_PROXY_NEIGH,
			FUNC0(*devconf, PROXY_ARP)) < 0)
		goto nla_put_failure;
	if ((all || type == NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN) &&
	    FUNC1(skb, NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN,
			FUNC0(*devconf, IGNORE_ROUTES_WITH_LINKDOWN)) < 0)
		goto nla_put_failure;

out:
	FUNC4(skb, nlh);
	return 0;

nla_put_failure:
	FUNC2(skb, nlh);
	return -EMSGSIZE;
}