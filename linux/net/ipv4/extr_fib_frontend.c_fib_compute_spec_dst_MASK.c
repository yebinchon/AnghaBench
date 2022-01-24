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
struct sk_buff {int /*<<< orphan*/  mark; struct net_device* dev; } ;
struct rtable {int rt_flags; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;
struct flowi4 {int flowi4_scope; int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  flowi4_iif; } ;
struct fib_result {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in_device*) ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int RTCF_BROADCAST ; 
 int RTCF_LOCAL ; 
 int RTCF_MULTICAST ; 
 int RT_SCOPE_LINK ; 
 int RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC2 (struct net_device*) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct fib_result*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct rtable* FUNC10 (struct sk_buff*) ; 

__be32 FUNC11(struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct in_device *in_dev;
	struct fib_result res;
	struct rtable *rt;
	struct net *net;
	int scope;

	rt = FUNC10(skb);
	if ((rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST | RTCF_LOCAL)) ==
	    RTCF_LOCAL)
		return FUNC7(skb)->daddr;

	in_dev = FUNC2(dev);

	net = FUNC3(dev);

	scope = RT_SCOPE_UNIVERSE;
	if (!FUNC8(FUNC7(skb)->saddr)) {
		bool vmark = in_dev && FUNC0(in_dev);
		struct flowi4 fl4 = {
			.flowi4_iif = LOOPBACK_IFINDEX,
			.flowi4_oif = FUNC9(dev),
			.daddr = FUNC7(skb)->saddr,
			.flowi4_tos = FUNC1(FUNC7(skb)->tos),
			.flowi4_scope = scope,
			.flowi4_mark = vmark ? skb->mark : 0,
		};
		if (!FUNC4(net, &fl4, &res, 0))
			return FUNC5(net, &res);
	} else {
		scope = RT_SCOPE_LINK;
	}

	return FUNC6(dev, FUNC7(skb)->saddr, scope);
}