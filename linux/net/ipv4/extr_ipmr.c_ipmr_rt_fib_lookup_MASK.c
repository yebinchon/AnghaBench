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
struct sk_buff {int /*<<< orphan*/  mark; TYPE_1__* dev; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_iif; int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 struct mr_table* FUNC0 (int) ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct net*,struct flowi4*,struct mr_table**) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*) ; 
 struct rtable* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct mr_table *FUNC6(struct net *net, struct sk_buff *skb)
{
	struct rtable *rt = FUNC5(skb);
	struct iphdr *iph = FUNC2(skb);
	struct flowi4 fl4 = {
		.daddr = iph->daddr,
		.saddr = iph->saddr,
		.flowi4_tos = FUNC1(iph->tos),
		.flowi4_oif = (FUNC4(rt) ?
			       skb->dev->ifindex : 0),
		.flowi4_iif = (FUNC4(rt) ?
			       LOOPBACK_IFINDEX :
			       skb->dev->ifindex),
		.flowi4_mark = skb->mark,
	};
	struct mr_table *mrt;
	int err;

	err = FUNC3(net, &fl4, &mrt);
	if (err)
		return FUNC0(err);
	return mrt;
}