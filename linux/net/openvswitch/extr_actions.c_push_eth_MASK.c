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
struct sw_flow_key {int /*<<< orphan*/  mac_proto; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_src; } ;
struct ovs_action_push_eth {TYPE_1__ addresses; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  MAC_PROTO_ETHERNET ; 
 struct ethhdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sw_flow_key*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ethhdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct sw_flow_key *key,
		    const struct ovs_action_push_eth *ethh)
{
	struct ethhdr *hdr;

	/* Add the new Ethernet header */
	if (FUNC3(skb, ETH_HLEN) < 0)
		return -ENOMEM;

	FUNC5(skb, ETH_HLEN);
	FUNC6(skb);
	FUNC7(skb);

	hdr = FUNC0(skb);
	FUNC1(hdr->h_source, ethh->addresses.eth_src);
	FUNC1(hdr->h_dest, ethh->addresses.eth_dst);
	hdr->h_proto = skb->protocol;

	FUNC4(skb, hdr, ETH_HLEN);

	/* safe right before invalidate_flow_key */
	key->mac_proto = MAC_PROTO_ETHERNET;
	FUNC2(key);
	return 0;
}