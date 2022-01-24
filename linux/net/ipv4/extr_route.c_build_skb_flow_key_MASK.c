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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mark; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
struct flowi4 {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net const*,struct flowi4*,struct sock const*,struct iphdr const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (TYPE_1__*) ; 
 struct iphdr* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static void FUNC4(struct flowi4 *fl4, const struct sk_buff *skb,
			       const struct sock *sk)
{
	const struct net *net = FUNC2(skb->dev);
	const struct iphdr *iph = FUNC3(skb);
	int oif = skb->dev->ifindex;
	u8 tos = FUNC0(iph->tos);
	u8 prot = iph->protocol;
	u32 mark = skb->mark;

	FUNC1(net, fl4, sk, iph, oif, tos, prot, mark, 0);
}