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
typedef  int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct batadv_unicast_tvlv_packet {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  tvlv_len; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ FUNC0 (struct batadv_priv*,struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*,struct batadv_hard_iface*) ; 
 int FUNC2 (struct batadv_priv*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct batadv_priv* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

int FUNC8(struct sk_buff *skb,
			     struct batadv_hard_iface *recv_if)
{
	struct batadv_priv *bat_priv = FUNC4(recv_if->soft_iface);
	struct batadv_unicast_tvlv_packet *unicast_tvlv_packet;
	unsigned char *tvlv_buff;
	u16 tvlv_buff_len;
	int hdr_size = sizeof(*unicast_tvlv_packet);
	int ret = NET_RX_DROP;

	if (FUNC0(bat_priv, skb, hdr_size) < 0)
		goto free_skb;

	/* the header is likely to be modified while forwarding */
	if (FUNC6(skb, hdr_size) < 0)
		goto free_skb;

	/* packet needs to be linearized to access the tvlv content */
	if (FUNC7(skb) < 0)
		goto free_skb;

	unicast_tvlv_packet = (struct batadv_unicast_tvlv_packet *)skb->data;

	tvlv_buff = (unsigned char *)(skb->data + hdr_size);
	tvlv_buff_len = FUNC5(unicast_tvlv_packet->tvlv_len);

	if (tvlv_buff_len > skb->len - hdr_size)
		goto free_skb;

	ret = FUNC2(bat_priv, false, NULL,
					     unicast_tvlv_packet->src,
					     unicast_tvlv_packet->dst,
					     tvlv_buff, tvlv_buff_len);

	if (ret != NET_RX_SUCCESS) {
		ret = FUNC1(skb, recv_if);
		/* skb was consumed */
		skb = NULL;
	}

free_skb:
	FUNC3(skb);

	return ret;
}