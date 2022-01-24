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
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct flowi4 {int flowi4_oif; int /*<<< orphan*/  flowi4_flags; int /*<<< orphan*/  flowi4_scope; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  daddr; } ;
typedef  int /*<<< orphan*/  fl4 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FLOWI_FLAG_KNOWN_NH ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 struct rtable* FUNC4 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC8(struct net *net, struct sk_buff *skb,
			      const struct in_addr *gw, int oif)
{
	const struct iphdr *iph = FUNC3(skb);
	struct rtable *rt;
	struct flowi4 fl4;

	FUNC5(&fl4, 0, sizeof(fl4));
	if (oif != -1)
		fl4.flowi4_oif = oif;

	fl4.daddr = gw->s_addr;
	fl4.flowi4_tos = FUNC1(iph->tos);
	fl4.flowi4_scope = RT_SCOPE_UNIVERSE;
	fl4.flowi4_flags = FLOWI_FLAG_KNOWN_NH;
	rt = FUNC4(net, &fl4);
	if (FUNC0(rt))
		return false;

	FUNC6(skb);
	FUNC7(skb, &rt->dst);
	skb->dev      = rt->dst.dev;
	skb->protocol = FUNC2(ETH_P_IP);

	return true;
}