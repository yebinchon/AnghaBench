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
struct sk_buff {int dummy; } ;
struct nf_hook_state {TYPE_1__* out; struct net* net; } ;
struct net {int dummy; } ;
struct clusterip_config {scalar_t__ ifindex; int /*<<< orphan*/  clustermac; } ;
struct arphdr {scalar_t__ ar_hrd; scalar_t__ ar_pro; int ar_pln; scalar_t__ ar_hln; scalar_t__ ar_op; } ;
struct arp_payload {int /*<<< orphan*/  src_hw; int /*<<< orphan*/  src_ip; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 unsigned int NF_ACCEPT ; 
 struct arphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct arp_payload*) ; 
 struct clusterip_config* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clusterip_config*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static unsigned int
FUNC7(void *priv,
	   struct sk_buff *skb,
	   const struct nf_hook_state *state)
{
	struct arphdr *arp = FUNC0(skb);
	struct arp_payload *payload;
	struct clusterip_config *c;
	struct net *net = state->net;

	/* we don't care about non-ethernet and non-ipv4 ARP */
	if (arp->ar_hrd != FUNC4(ARPHRD_ETHER) ||
	    arp->ar_pro != FUNC4(ETH_P_IP) ||
	    arp->ar_pln != 4 || arp->ar_hln != ETH_ALEN)
		return NF_ACCEPT;

	/* we only want to mangle arp requests and replies */
	if (arp->ar_op != FUNC4(ARPOP_REPLY) &&
	    arp->ar_op != FUNC4(ARPOP_REQUEST))
		return NF_ACCEPT;

	payload = (void *)(arp+1);

	/* if there is no clusterip configuration for the arp reply's
	 * source ip, we don't want to mangle it */
	c = FUNC2(net, payload->src_ip, 0);
	if (!c)
		return NF_ACCEPT;

	/* normally the linux kernel always replies to arp queries of
	 * addresses on different interfacs.  However, in the CLUSTERIP case
	 * this wouldn't work, since we didn't subscribe the mcast group on
	 * other interfaces */
	if (c->ifindex != state->out->ifindex) {
		FUNC6("not mangling arp reply on different interface: cip'%d'-skb'%d'\n",
			 c->ifindex, state->out->ifindex);
		FUNC3(c);
		return NF_ACCEPT;
	}

	/* mangle reply hardware address */
	FUNC5(payload->src_hw, c->clustermac, arp->ar_hln);

#ifdef DEBUG
	pr_debug("mangled arp reply: ");
	arp_print(payload);
#endif

	FUNC3(c);

	return NF_ACCEPT;
}