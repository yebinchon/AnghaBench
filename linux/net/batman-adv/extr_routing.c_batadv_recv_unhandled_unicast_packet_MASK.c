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
struct sk_buff {scalar_t__ data; } ;
struct batadv_unicast_packet {int /*<<< orphan*/  dest; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int FUNC0 (struct batadv_priv*,struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct batadv_priv* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb,
					 struct batadv_hard_iface *recv_if)
{
	struct batadv_unicast_packet *unicast_packet;
	struct batadv_priv *bat_priv = FUNC4(recv_if->soft_iface);
	int check, hdr_size = sizeof(*unicast_packet);

	check = FUNC0(bat_priv, skb, hdr_size);
	if (check < 0)
		goto free_skb;

	/* we don't know about this type, drop it. */
	unicast_packet = (struct batadv_unicast_packet *)skb->data;
	if (FUNC1(bat_priv, unicast_packet->dest))
		goto free_skb;

	return FUNC2(skb, recv_if);

free_skb:
	FUNC3(skb);
	return NET_RX_DROP;
}