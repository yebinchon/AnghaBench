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
struct sk_buff {TYPE_1__* dev; void* protocol; } ;
struct ethhdr {void* h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {scalar_t__ if_status; TYPE_1__* net_dev; int /*<<< orphan*/  soft_iface; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  const* dev_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BATADV_IF_ACTIVE ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_BATMAN ; 
 int IFF_UP ; 
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct ethhdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int) ; 
 struct batadv_priv* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct sk_buff *skb,
			   struct batadv_hard_iface *hard_iface,
			   const u8 *dst_addr)
{
	struct batadv_priv *bat_priv;
	struct ethhdr *ethhdr;
	int ret;

	bat_priv = FUNC8(hard_iface->soft_iface);

	if (hard_iface->if_status != BATADV_IF_ACTIVE)
		goto send_skb_err;

	if (FUNC12(!hard_iface->net_dev))
		goto send_skb_err;

	if (!(hard_iface->net_dev->flags & IFF_UP)) {
		FUNC9("Interface %s is not up - can't send packet via that interface!\n",
			hard_iface->net_dev->name);
		goto send_skb_err;
	}

	/* push to the ethernet header. */
	if (FUNC1(skb, ETH_HLEN) < 0)
		goto send_skb_err;

	FUNC10(skb);

	ethhdr = FUNC3(skb);
	FUNC4(ethhdr->h_source, hard_iface->net_dev->dev_addr);
	FUNC4(ethhdr->h_dest, dst_addr);
	ethhdr->h_proto = FUNC5(ETH_P_BATMAN);

	FUNC11(skb, ETH_HLEN);
	skb->protocol = FUNC5(ETH_P_BATMAN);

	skb->dev = hard_iface->net_dev;

	/* Save a clone of the skb to use when decoding coded packets */
	FUNC0(bat_priv, skb);

	/* dev_queue_xmit() returns a negative result on error.	 However on
	 * congestion and traffic shaping, it drops and returns NET_XMIT_DROP
	 * (which is > 0). This will not be treated as an error.
	 */
	ret = FUNC2(skb);
	return FUNC7(ret);
send_skb_err:
	FUNC6(skb);
	return NET_XMIT_DROP;
}