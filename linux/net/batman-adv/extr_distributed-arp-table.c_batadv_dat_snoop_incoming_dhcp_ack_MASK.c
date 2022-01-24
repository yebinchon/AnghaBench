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
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/ * h_source; int /*<<< orphan*/  h_proto; } ;
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_DAT ; 
 int BATADV_DHCP_CHADDR_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 unsigned short FUNC3 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct batadv_priv *bat_priv,
					struct sk_buff *skb, int hdr_size)
{
	u8 chaddr[BATADV_DHCP_CHADDR_LEN];
	struct ethhdr *ethhdr;
	__be32 ip_src, yiaddr;
	unsigned short vid;
	__be16 proto;
	u8 *hw_src;

	if (!FUNC0(&bat_priv->distributed_arp_table))
		return;

	if (FUNC8(!FUNC6(skb, hdr_size + ETH_HLEN)))
		return;

	ethhdr = (struct ethhdr *)(skb->data + hdr_size);
	FUNC7(skb, hdr_size + ETH_HLEN);
	proto = ethhdr->h_proto;

	if (!FUNC1(skb, proto, &ip_src, chaddr, &yiaddr))
		return;

	hw_src = ethhdr->h_source;
	vid = FUNC3(skb, &hdr_size);

	FUNC2(bat_priv, yiaddr, chaddr, vid);
	FUNC2(bat_priv, ip_src, hw_src, vid);

	FUNC4(BATADV_DBG_DAT, bat_priv,
		   "Snooped from incoming DHCPACK (server address): %pI4, %pM (vid: %i)\n",
		   &ip_src, hw_src, FUNC5(vid));
	FUNC4(BATADV_DBG_DAT, bat_priv,
		   "Snooped from incoming DHCPACK (client address): %pI4, %pM (vid: %i)\n",
		   &yiaddr, chaddr, FUNC5(vid));
}