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
struct sk_buff {int dummy; } ;
struct batadv_unicast_4addr_packet {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; } ;
struct batadv_dat_entry {int /*<<< orphan*/  mac_addr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ARPOP_REQUEST ; 
 int /*<<< orphan*/  BATADV_CNT_DAT_CACHED_REPLY_TX ; 
 int /*<<< orphan*/  BATADV_P_DAT_CACHE_REPLY ; 
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct batadv_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC5 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 struct batadv_dat_entry* FUNC7 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_dat_entry*) ; 
 unsigned short FUNC9 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_priv*,struct sk_buff*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ *,unsigned short) ; 
 int FUNC13 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

bool FUNC15(struct batadv_priv *bat_priv,
					   struct sk_buff *skb, int hdr_size)
{
	u16 type;
	__be32 ip_src, ip_dst;
	u8 *hw_src;
	struct sk_buff *skb_new;
	struct batadv_dat_entry *dat_entry = NULL;
	bool ret = false;
	unsigned short vid;
	int err;

	if (!FUNC0(&bat_priv->distributed_arp_table))
		goto out;

	vid = FUNC9(skb, &hdr_size);

	type = FUNC1(bat_priv, skb, hdr_size);
	if (type != ARPOP_REQUEST)
		goto out;

	hw_src = FUNC2(skb, hdr_size);
	ip_src = FUNC4(skb, hdr_size);
	ip_dst = FUNC3(skb, hdr_size);

	FUNC10(bat_priv, skb, hdr_size, "Parsing incoming ARP REQUEST");

	FUNC6(bat_priv, ip_src, hw_src, vid);

	dat_entry = FUNC7(bat_priv, ip_dst, vid);
	if (!dat_entry)
		goto out;

	skb_new = FUNC5(bat_priv, ip_dst, ip_src,
					      dat_entry->mac_addr, hw_src, vid);
	if (!skb_new)
		goto out;

	/* To preserve backwards compatibility, the node has choose the outgoing
	 * format based on the incoming request packet type. The assumption is
	 * that a node not using the 4addr packet format doesn't support it.
	 */
	if (hdr_size == sizeof(struct batadv_unicast_4addr_packet))
		err = FUNC13(bat_priv, skb_new,
						   BATADV_P_DAT_CACHE_REPLY,
						   NULL, vid);
	else
		err = FUNC12(bat_priv, skb_new, NULL, vid);

	if (err != NET_XMIT_DROP) {
		FUNC11(bat_priv, BATADV_CNT_DAT_CACHED_REPLY_TX);
		ret = true;
	}
out:
	if (dat_entry)
		FUNC8(dat_entry);
	if (ret)
		FUNC14(skb);
	return ret;
}