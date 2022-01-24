#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlan_ethhdr {int /*<<< orphan*/  h_vlan_encapsulated_proto; } ;
struct sk_buff {int /*<<< orphan*/  mark; scalar_t__ len; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_proto; } ;
struct batadv_priv {int /*<<< orphan*/  isolation_mark; int /*<<< orphan*/  isolation_mark_mask; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_bcast_packet {scalar_t__ packet_type; } ;

/* Variables and functions */
 scalar_t__ BATADV_BCAST ; 
 int /*<<< orphan*/  BATADV_CNT_RX ; 
 int /*<<< orphan*/  BATADV_CNT_RX_BYTES ; 
 scalar_t__ ETH_HLEN ; 
#define  ETH_P_8021Q 129 
#define  ETH_P_BATMAN 128 
 scalar_t__ VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct batadv_priv*,struct sk_buff*,unsigned short,int) ; 
 unsigned short FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*,struct batadv_orig_node*,int /*<<< orphan*/ ,unsigned short) ; 
 scalar_t__ FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 scalar_t__ FUNC7 (struct batadv_priv*,unsigned short) ; 
 struct ethhdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 struct batadv_priv* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct ethhdr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (int) ; 

void FUNC22(struct net_device *soft_iface,
			 struct sk_buff *skb, int hdr_size,
			 struct batadv_orig_node *orig_node)
{
	struct batadv_bcast_packet *batadv_bcast_packet;
	struct batadv_priv *bat_priv = FUNC13(soft_iface);
	struct vlan_ethhdr *vhdr;
	struct ethhdr *ethhdr;
	unsigned short vid;
	bool is_bcast;

	batadv_bcast_packet = (struct batadv_bcast_packet *)skb->data;
	is_bcast = (batadv_bcast_packet->packet_type == BATADV_BCAST);

	FUNC19(skb, hdr_size);
	FUNC20(skb);

	/* clean the netfilter state now that the batman-adv header has been
	 * removed
	 */
	FUNC15(skb);

	if (FUNC21(!FUNC17(skb, ETH_HLEN)))
		goto dropped;

	vid = FUNC2(skb, 0);
	ethhdr = FUNC8(skb);

	switch (FUNC16(ethhdr->h_proto)) {
	case ETH_P_8021Q:
		if (!FUNC17(skb, VLAN_ETH_HLEN))
			goto dropped;

		vhdr = (struct vlan_ethhdr *)skb->data;

		/* drop batman-in-batman packets to prevent loops */
		if (vhdr->h_vlan_encapsulated_proto != FUNC10(ETH_P_BATMAN))
			break;

		/* fall through */
	case ETH_P_BATMAN:
		goto dropped;
	}

	/* skb->dev & skb->pkt_type are set here */
	skb->protocol = FUNC9(skb, soft_iface);
	FUNC18(skb, FUNC8(skb), ETH_HLEN);

	FUNC3(bat_priv, BATADV_CNT_RX);
	FUNC0(bat_priv, BATADV_CNT_RX_BYTES,
			   skb->len + ETH_HLEN);

	/* Let the bridge loop avoidance check the packet. If will
	 * not handle it, we can safely push it up.
	 */
	if (FUNC1(bat_priv, skb, vid, is_bcast))
		goto out;

	if (orig_node)
		FUNC5(bat_priv, orig_node,
						     ethhdr->h_source, vid);

	if (FUNC11(ethhdr->h_dest)) {
		/* set the mark on broadcast packets if AP isolation is ON and
		 * the packet is coming from an "isolated" client
		 */
		if (FUNC7(bat_priv, vid) &&
		    FUNC6(bat_priv, ethhdr->h_source,
						 vid)) {
			/* save bits in skb->mark not covered by the mask and
			 * apply the mark on the rest
			 */
			skb->mark &= ~bat_priv->isolation_mark_mask;
			skb->mark |= bat_priv->isolation_mark;
		}
	} else if (FUNC4(bat_priv, ethhdr->h_source,
					 ethhdr->h_dest, vid)) {
		goto dropped;
	}

	FUNC14(skb);
	goto out;

dropped:
	FUNC12(skb);
out:
	return;
}