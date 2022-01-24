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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; struct net_device* soft_iface; } ;
struct batadv_dat_entry {int /*<<< orphan*/  mac_addr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ARPOP_REQUEST ; 
 int /*<<< orphan*/  BATADV_CNT_RX ; 
 int /*<<< orphan*/  BATADV_CNT_RX_BYTES ; 
 int /*<<< orphan*/  BATADV_DBG_DAT ; 
 int /*<<< orphan*/  BATADV_P_DAT_DHT_GET ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct batadv_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 struct sk_buff* FUNC7 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 struct batadv_dat_entry* FUNC9 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_dat_entry*) ; 
 int FUNC11 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 unsigned short FUNC12 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct batadv_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct batadv_priv*,struct sk_buff*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 

bool FUNC19(struct batadv_priv *bat_priv,
					   struct sk_buff *skb)
{
	u16 type = 0;
	__be32 ip_dst, ip_src;
	u8 *hw_src;
	bool ret = false;
	struct batadv_dat_entry *dat_entry = NULL;
	struct sk_buff *skb_new;
	struct net_device *soft_iface = bat_priv->soft_iface;
	int hdr_size = 0;
	unsigned short vid;

	if (!FUNC0(&bat_priv->distributed_arp_table))
		goto out;

	vid = FUNC12(skb, &hdr_size);

	type = FUNC2(bat_priv, skb, hdr_size);
	/* If the node gets an ARP_REQUEST it has to send a DHT_GET unicast
	 * message to the selected DHT candidates
	 */
	if (type != ARPOP_REQUEST)
		goto out;

	FUNC14(bat_priv, skb, hdr_size, "Parsing outgoing ARP REQUEST");

	ip_src = FUNC5(skb, hdr_size);
	hw_src = FUNC3(skb, hdr_size);
	ip_dst = FUNC4(skb, hdr_size);

	FUNC8(bat_priv, ip_src, hw_src, vid);

	dat_entry = FUNC9(bat_priv, ip_dst, vid);
	if (dat_entry) {
		/* If the ARP request is destined for a local client the local
		 * client will answer itself. DAT would only generate a
		 * duplicate packet.
		 *
		 * Moreover, if the soft-interface is enslaved into a bridge, an
		 * additional DAT answer may trigger kernel warnings about
		 * a packet coming from the wrong port.
		 */
		if (FUNC16(bat_priv, dat_entry->mac_addr, vid)) {
			ret = true;
			goto out;
		}

		/* If BLA is enabled, only send ARP replies if we have claimed
		 * the destination for the ARP request or if no one else of
		 * the backbone gws belonging to our backbone has claimed the
		 * destination.
		 */
		if (!FUNC6(bat_priv,
					    dat_entry->mac_addr, vid)) {
			FUNC13(BATADV_DBG_DAT, bat_priv,
				   "Device %pM claimed by another backbone gw. Don't send ARP reply!",
				   dat_entry->mac_addr);
			ret = true;
			goto out;
		}

		skb_new = FUNC7(bat_priv, ip_dst, ip_src,
						      dat_entry->mac_addr,
						      hw_src, vid);
		if (!skb_new)
			goto out;

		skb_new->protocol = FUNC17(skb_new, soft_iface);

		FUNC15(bat_priv, BATADV_CNT_RX);
		FUNC1(bat_priv, BATADV_CNT_RX_BYTES,
				   skb->len + ETH_HLEN + hdr_size);

		FUNC18(skb_new);
		FUNC13(BATADV_DBG_DAT, bat_priv, "ARP request replied locally\n");
		ret = true;
	} else {
		/* Send the request to the DHT */
		ret = FUNC11(bat_priv, skb, ip_dst, vid,
					      BATADV_P_DAT_DHT_GET);
	}
out:
	if (dat_entry)
		FUNC10(dat_entry);
	return ret;
}