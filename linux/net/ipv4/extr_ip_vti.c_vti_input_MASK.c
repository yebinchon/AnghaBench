#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {struct ip_tunnel* ip4; } ;
struct TYPE_6__ {TYPE_1__ tunnel; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TUNNEL_NO_KEY ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 struct net* FUNC1 (TYPE_2__*) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC3 (struct ip_tunnel_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct ip_tunnel_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vti_net_id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, int nexthdr, __be32 spi,
		     int encap_type, bool update_skb_dev)
{
	struct ip_tunnel *tunnel;
	const struct iphdr *iph = FUNC2(skb);
	struct net *net = FUNC1(skb->dev);
	struct ip_tunnel_net *itn = FUNC5(net, vti_net_id);

	tunnel = FUNC3(itn, skb->dev->ifindex, TUNNEL_NO_KEY,
				  iph->saddr, iph->daddr, 0);
	if (tunnel) {
		if (!FUNC6(NULL, XFRM_POLICY_IN, skb))
			goto drop;

		FUNC0(skb)->tunnel.ip4 = tunnel;

		if (update_skb_dev)
			skb->dev = tunnel->dev;

		return FUNC7(skb, nexthdr, spi, encap_type);
	}

	return -EINVAL;
drop:
	FUNC4(skb);
	return 0;
}