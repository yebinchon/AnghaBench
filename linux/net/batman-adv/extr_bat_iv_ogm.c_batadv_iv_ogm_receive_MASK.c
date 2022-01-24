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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_ogm_packet {int /*<<< orphan*/  tvlv_len; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;
struct TYPE_3__ {scalar_t__ enable; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_MGMT_RX ; 
 int /*<<< orphan*/  BATADV_CNT_MGMT_RX_BYTES ; 
 scalar_t__ BATADV_OGM_HLEN ; 
 scalar_t__ ETH_HLEN ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct sk_buff*,struct batadv_hard_iface*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct batadv_ogm_packet*) ; 
 scalar_t__ batadv_iv_ogm_iface_enable ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct batadv_priv* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb,
				 struct batadv_hard_iface *if_incoming)
{
	struct batadv_priv *bat_priv = FUNC7(if_incoming->soft_iface);
	struct batadv_ogm_packet *ogm_packet;
	u8 *packet_pos;
	int ogm_offset;
	bool res;
	int ret = NET_RX_DROP;

	res = FUNC1(skb, if_incoming, BATADV_OGM_HLEN);
	if (!res)
		goto free_skb;

	/* did we receive a B.A.T.M.A.N. IV OGM packet on an interface
	 * that does not have B.A.T.M.A.N. IV enabled ?
	 */
	if (bat_priv->algo_ops->iface.enable != batadv_iv_ogm_iface_enable)
		goto free_skb;

	FUNC2(bat_priv, BATADV_CNT_MGMT_RX);
	FUNC0(bat_priv, BATADV_CNT_MGMT_RX_BYTES,
			   skb->len + ETH_HLEN);

	ogm_offset = 0;
	ogm_packet = (struct batadv_ogm_packet *)skb->data;

	/* unpack the aggregated packets and process them one by one */
	while (FUNC3(ogm_offset, FUNC9(skb),
					 ogm_packet)) {
		FUNC4(skb, ogm_offset, if_incoming);

		ogm_offset += BATADV_OGM_HLEN;
		ogm_offset += FUNC8(ogm_packet->tvlv_len);

		packet_pos = skb->data + ogm_offset;
		ogm_packet = (struct batadv_ogm_packet *)packet_pos;
	}

	ret = NET_RX_SUCCESS;

free_skb:
	if (ret == NET_RX_SUCCESS)
		FUNC5(skb);
	else
		FUNC6(skb);

	return ret;
}