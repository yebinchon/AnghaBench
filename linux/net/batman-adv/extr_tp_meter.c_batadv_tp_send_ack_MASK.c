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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {TYPE_1__* net_dev; int /*<<< orphan*/  orig; } ;
struct batadv_icmp_tp_packet {int uid; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  seqno; int /*<<< orphan*/  session; int /*<<< orphan*/  subtype; int /*<<< orphan*/  orig; int /*<<< orphan*/  dst; int /*<<< orphan*/  msg_type; int /*<<< orphan*/  ttl; int /*<<< orphan*/  version; int /*<<< orphan*/  packet_type; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; int /*<<< orphan*/  orig; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_COMPAT_VERSION ; 
 int /*<<< orphan*/  BATADV_ICMP ; 
 int /*<<< orphan*/  BATADV_TP ; 
 int /*<<< orphan*/  BATADV_TP_ACK ; 
 int BATADV_TP_REASON_DST_UNREACHABLE ; 
 int BATADV_TP_REASON_MEMORY_ERROR ; 
 int /*<<< orphan*/  BATADV_TTL ; 
 scalar_t__ ETH_HLEN ; 
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_orig_node*) ; 
 struct batadv_orig_node* FUNC1 (struct batadv_priv*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_node*) ; 
 struct batadv_orig_node* FUNC3 (struct batadv_priv*) ; 
 int FUNC4 (struct sk_buff*,struct batadv_orig_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct batadv_icmp_tp_packet* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct batadv_priv *bat_priv, const u8 *dst,
			      u32 seq, __be32 timestamp, const u8 *session,
			      int socket_index)
{
	struct batadv_hard_iface *primary_if = NULL;
	struct batadv_orig_node *orig_node;
	struct batadv_icmp_tp_packet *icmp;
	struct sk_buff *skb;
	int r, ret;

	orig_node = FUNC1(bat_priv, dst);
	if (FUNC12(!orig_node)) {
		ret = BATADV_TP_REASON_DST_UNREACHABLE;
		goto out;
	}

	primary_if = FUNC3(bat_priv);
	if (FUNC12(!primary_if)) {
		ret = BATADV_TP_REASON_DST_UNREACHABLE;
		goto out;
	}

	skb = FUNC9(NULL, sizeof(*icmp) + ETH_HLEN);
	if (FUNC12(!skb)) {
		ret = BATADV_TP_REASON_MEMORY_ERROR;
		goto out;
	}

	FUNC11(skb, ETH_HLEN);
	icmp = FUNC10(skb, sizeof(*icmp));
	icmp->packet_type = BATADV_ICMP;
	icmp->version = BATADV_COMPAT_VERSION;
	icmp->ttl = BATADV_TTL;
	icmp->msg_type = BATADV_TP;
	FUNC5(icmp->dst, orig_node->orig);
	FUNC5(icmp->orig, primary_if->net_dev->dev_addr);
	icmp->uid = socket_index;

	icmp->subtype = BATADV_TP_ACK;
	FUNC8(icmp->session, session, sizeof(icmp->session));
	icmp->seqno = FUNC6(seq);
	icmp->timestamp = timestamp;

	/* send the ack */
	r = FUNC4(skb, orig_node, NULL);
	if (FUNC12(r < 0) || r == NET_XMIT_DROP) {
		ret = BATADV_TP_REASON_DST_UNREACHABLE;
		goto out;
	}
	ret = 0;

out:
	if (FUNC7(orig_node))
		FUNC2(orig_node);
	if (FUNC7(primary_if))
		FUNC0(primary_if);

	return ret;
}