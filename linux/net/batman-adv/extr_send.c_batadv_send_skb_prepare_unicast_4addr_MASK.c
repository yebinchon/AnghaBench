#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  packet_type; } ;
struct batadv_unicast_4addr_packet {int subtype; scalar_t__ reserved; int /*<<< orphan*/  src; TYPE_1__ u; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_UNICAST_4ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(struct batadv_priv *bat_priv,
					   struct sk_buff *skb,
					   struct batadv_orig_node *orig,
					   int packet_subtype)
{
	struct batadv_hard_iface *primary_if;
	struct batadv_unicast_4addr_packet *uc_4addr_packet;
	bool ret = false;

	primary_if = FUNC1(bat_priv);
	if (!primary_if)
		goto out;

	/* Pull the header space and fill the unicast_packet substructure.
	 * We can do that because the first member of the uc_4addr_packet
	 * is of type struct unicast_packet
	 */
	if (!FUNC2(skb, sizeof(*uc_4addr_packet),
					       orig))
		goto out;

	uc_4addr_packet = (struct batadv_unicast_4addr_packet *)skb->data;
	uc_4addr_packet->u.packet_type = BATADV_UNICAST_4ADDR;
	FUNC3(uc_4addr_packet->src, primary_if->net_dev->dev_addr);
	uc_4addr_packet->subtype = packet_subtype;
	uc_4addr_packet->reserved = 0;

	ret = true;
out:
	if (primary_if)
		FUNC0(primary_if);
	return ret;
}