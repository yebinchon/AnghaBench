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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int ifindex; } ;
struct inet6_fill_args {scalar_t__ netnsid; int /*<<< orphan*/  flags; int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct ifaddrmsg {int dummy; } ;
struct ifacaddr6 {int /*<<< orphan*/  aca_tstamp; int /*<<< orphan*/  aca_cstamp; int /*<<< orphan*/  aca_addr; int /*<<< orphan*/  aca_rt; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFA_ANYCAST ; 
 int /*<<< orphan*/  IFA_F_PERMANENT ; 
 int IFA_SITE ; 
 int /*<<< orphan*/  IFA_TARGET_NETNSID ; 
 int /*<<< orphan*/  INFINITY_LIFE_TIME ; 
 int /*<<< orphan*/  RT_SCOPE_SITE ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nlmsghdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct ifacaddr6 *ifaca,
			       struct inet6_fill_args *args)
{
	struct net_device *dev = FUNC0(ifaca->aca_rt);
	int ifindex = dev ? dev->ifindex : 1;
	struct nlmsghdr  *nlh;
	u8 scope = RT_SCOPE_UNIVERSE;

	if (FUNC1(&ifaca->aca_addr) & IFA_SITE)
		scope = RT_SCOPE_SITE;

	nlh = FUNC6(skb, args->portid, args->seq, args->event,
			sizeof(struct ifaddrmsg), args->flags);
	if (!nlh)
		return -EMSGSIZE;

	if (args->netnsid >= 0 &&
	    FUNC3(skb, IFA_TARGET_NETNSID, args->netnsid))
		return -EMSGSIZE;

	FUNC8(nlh, 128, IFA_F_PERMANENT, scope, ifindex);
	if (FUNC2(skb, IFA_ANYCAST, &ifaca->aca_addr) < 0 ||
	    FUNC7(skb, ifaca->aca_cstamp, ifaca->aca_tstamp,
			  INFINITY_LIFE_TIME, INFINITY_LIFE_TIME) < 0) {
		FUNC4(skb, nlh);
		return -EMSGSIZE;
	}

	FUNC5(skb, nlh);
	return 0;
}