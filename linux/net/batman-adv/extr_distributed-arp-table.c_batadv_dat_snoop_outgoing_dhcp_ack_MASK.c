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
struct sk_buff {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int BATADV_DHCP_CHADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

void FUNC4(struct batadv_priv *bat_priv,
					struct sk_buff *skb,
					__be16 proto,
					unsigned short vid)
{
	u8 chaddr[BATADV_DHCP_CHADDR_LEN];
	__be32 ip_src, yiaddr;

	if (!FUNC0(&bat_priv->distributed_arp_table))
		return;

	if (!FUNC1(skb, proto, &ip_src, chaddr, &yiaddr))
		return;

	FUNC2(bat_priv, chaddr, yiaddr, FUNC3(skb)->h_source,
			    ip_src, vid);
}