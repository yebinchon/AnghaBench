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
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ARPOP_REPLY ; 
 int /*<<< orphan*/  BATADV_P_DAT_DHT_PUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct batadv_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 unsigned short FUNC8 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_priv*,struct sk_buff*,int,char*) ; 

void FUNC10(struct batadv_priv *bat_priv,
					 struct sk_buff *skb)
{
	u16 type;
	__be32 ip_src, ip_dst;
	u8 *hw_src, *hw_dst;
	int hdr_size = 0;
	unsigned short vid;

	if (!FUNC0(&bat_priv->distributed_arp_table))
		return;

	vid = FUNC8(skb, &hdr_size);

	type = FUNC1(bat_priv, skb, hdr_size);
	if (type != ARPOP_REPLY)
		return;

	FUNC9(bat_priv, skb, hdr_size, "Parsing outgoing ARP REPLY");

	hw_src = FUNC3(skb, hdr_size);
	ip_src = FUNC5(skb, hdr_size);
	hw_dst = FUNC2(skb, hdr_size);
	ip_dst = FUNC4(skb, hdr_size);

	FUNC6(bat_priv, ip_src, hw_src, vid);
	FUNC6(bat_priv, ip_dst, hw_dst, vid);

	/* Send the ARP reply to the candidates for both the IP addresses that
	 * the node obtained from the ARP reply
	 */
	FUNC7(bat_priv, skb, ip_src, vid,
				BATADV_P_DAT_DHT_PUT);
	FUNC7(bat_priv, skb, ip_dst, vid,
				BATADV_P_DAT_DHT_PUT);
}