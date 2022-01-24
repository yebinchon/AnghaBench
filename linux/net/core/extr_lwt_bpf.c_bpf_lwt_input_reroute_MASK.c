#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int (* ipv6_route_input ) (struct sk_buff*) ;} ;
struct TYPE_3__ {struct net_device* dev; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 TYPE_2__* ipv6_stub ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb)
{
	int err = -EINVAL;

	if (skb->protocol == FUNC3(ETH_P_IP)) {
		struct net_device *dev = FUNC7(skb)->dev;
		struct iphdr *iph = FUNC4(skb);

		FUNC0(dev);
		FUNC8(skb);
		err = FUNC5(skb, iph->daddr, iph->saddr,
					   iph->tos, dev);
		FUNC1(dev);
	} else if (skb->protocol == FUNC3(ETH_P_IPV6)) {
		FUNC8(skb);
		err = ipv6_stub->ipv6_route_input(skb);
	} else {
		err = -EAFNOSUPPORT;
	}

	if (err)
		goto err;
	return FUNC2(skb);

err:
	FUNC6(skb);
	return err;
}