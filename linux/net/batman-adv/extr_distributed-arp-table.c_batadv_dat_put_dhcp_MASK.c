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
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_DAT ; 
 int /*<<< orphan*/  BATADV_P_DAT_DHT_PUT ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 struct sk_buff* FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct batadv_priv *bat_priv, u8 *chaddr,
				__be32 yiaddr, u8 *hw_dst, __be32 ip_dst,
				unsigned short vid)
{
	struct sk_buff *skb;

	skb = FUNC0(bat_priv, yiaddr, ip_dst, chaddr,
					  hw_dst, vid);
	if (!skb)
		return;

	FUNC6(skb, ETH_HLEN);

	FUNC1(bat_priv, yiaddr, chaddr, vid);
	FUNC1(bat_priv, ip_dst, hw_dst, vid);

	FUNC2(bat_priv, skb, yiaddr, vid,
				BATADV_P_DAT_DHT_PUT);
	FUNC2(bat_priv, skb, ip_dst, vid,
				BATADV_P_DAT_DHT_PUT);

	FUNC5(skb);

	FUNC3(BATADV_DBG_DAT, bat_priv,
		   "Snooped from outgoing DHCPACK (server address): %pI4, %pM (vid: %i)\n",
		   &ip_dst, hw_dst, FUNC4(vid));
	FUNC3(BATADV_DBG_DAT, bat_priv,
		   "Snooped from outgoing DHCPACK (client address): %pI4, %pM (vid: %i)\n",
		   &yiaddr, chaddr, FUNC4(vid));
}