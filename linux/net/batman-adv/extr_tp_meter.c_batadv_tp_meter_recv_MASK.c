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
struct batadv_priv {int dummy; } ;
struct batadv_icmp_tp_packet {int subtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
#define  BATADV_TP_ACK 129 
#define  BATADV_TP_MSG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

void FUNC4(struct batadv_priv *bat_priv, struct sk_buff *skb)
{
	struct batadv_icmp_tp_packet *icmp;

	icmp = (struct batadv_icmp_tp_packet *)skb->data;

	switch (icmp->subtype) {
	case BATADV_TP_MSG:
		FUNC2(bat_priv, skb);
		break;
	case BATADV_TP_ACK:
		FUNC1(bat_priv, skb);
		break;
	default:
		FUNC0(BATADV_DBG_TP_METER, bat_priv,
			   "Received unknown TP Metric packet type %u\n",
			   icmp->subtype);
	}
	FUNC3(skb);
}