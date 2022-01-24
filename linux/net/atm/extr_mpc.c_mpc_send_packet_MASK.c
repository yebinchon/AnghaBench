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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct mpoa_client {int number_of_mps_macs; int /*<<< orphan*/  old_ops; scalar_t__ mps_macs; } ;
struct iphdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int ihl; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,struct net_device*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mpoa_client* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
					 struct net_device *dev)
{
	struct mpoa_client *mpc;
	struct ethhdr *eth;
	int i = 0;

	mpc = FUNC2(dev); /* this should NEVER fail */
	if (mpc == NULL) {
		FUNC5("(%s) no MPC found\n", dev->name);
		goto non_ip;
	}

	eth = (struct ethhdr *)skb->data;
	if (eth->h_proto != FUNC3(ETH_P_IP))
		goto non_ip; /* Multi-Protocol Over ATM :-) */

	/* Weed out funny packets (e.g., AF_PACKET or raw). */
	if (skb->len < ETH_HLEN + sizeof(struct iphdr))
		goto non_ip;
	FUNC7(skb, ETH_HLEN);
	if (skb->len < ETH_HLEN + FUNC4(skb)->ihl * 4 || FUNC4(skb)->ihl < 5)
		goto non_ip;

	while (i < mpc->number_of_mps_macs) {
		if (FUNC1(eth->h_dest, mpc->mps_macs + i * ETH_ALEN))
			if (FUNC6(skb, mpc) == 0) /* try shortcut */
				return NETDEV_TX_OK;
		i++;
	}

non_ip:
	return FUNC0(mpc->old_ops, skb, dev, false);
}