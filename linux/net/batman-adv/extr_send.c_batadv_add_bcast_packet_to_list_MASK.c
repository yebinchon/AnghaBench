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
struct batadv_priv {int /*<<< orphan*/  bcast_queue_left; } ;
struct batadv_hard_iface {int dummy; } ;
struct batadv_forw_packet {int own; int /*<<< orphan*/  delayed_work; } ;
struct batadv_bcast_packet {int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 struct batadv_forw_packet* FUNC1 (struct batadv_hard_iface*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct batadv_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_forw_packet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC4 (struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_send_outstanding_bcast_packet ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sk_buff const*,int /*<<< orphan*/ ) ; 

int FUNC7(struct batadv_priv *bat_priv,
				    const struct sk_buff *skb,
				    unsigned long delay,
				    bool own_packet)
{
	struct batadv_hard_iface *primary_if;
	struct batadv_forw_packet *forw_packet;
	struct batadv_bcast_packet *bcast_packet;
	struct sk_buff *newskb;

	primary_if = FUNC4(bat_priv);
	if (!primary_if)
		goto err;

	newskb = FUNC6(skb, GFP_ATOMIC);
	if (!newskb) {
		FUNC3(primary_if);
		goto err;
	}

	forw_packet = FUNC1(primary_if, NULL,
					       &bat_priv->bcast_queue_left,
					       bat_priv, newskb);
	FUNC3(primary_if);
	if (!forw_packet)
		goto err_packet_free;

	/* as we have a copy now, it is safe to decrease the TTL */
	bcast_packet = (struct batadv_bcast_packet *)newskb->data;
	bcast_packet->ttl--;

	forw_packet->own = own_packet;

	FUNC0(&forw_packet->delayed_work,
			  batadv_send_outstanding_bcast_packet);

	FUNC2(bat_priv, forw_packet, jiffies + delay);
	return NETDEV_TX_OK;

err_packet_free:
	FUNC5(newskb);
err:
	return NETDEV_TX_BUSY;
}