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
typedef  void* u8 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct batadv_unicast_tvlv_packet {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ align; void* tvlv_len; scalar_t__ reserved; int /*<<< orphan*/  ttl; int /*<<< orphan*/  version; int /*<<< orphan*/  packet_type; } ;
struct batadv_tvlv_hdr {void* len; void* type; void* version; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_COMPAT_VERSION ; 
 int /*<<< orphan*/  BATADV_TTL ; 
 int /*<<< orphan*/  BATADV_UNICAST_TVLV ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 struct batadv_orig_node* FUNC0 (struct batadv_priv*,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct batadv_orig_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,void*,int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *,int) ; 
 unsigned char* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

void FUNC9(struct batadv_priv *bat_priv, u8 *src,
			      u8 *dst, u8 type, u8 version,
			      void *tvlv_value, u16 tvlv_value_len)
{
	struct batadv_unicast_tvlv_packet *unicast_tvlv_packet;
	struct batadv_tvlv_hdr *tvlv_hdr;
	struct batadv_orig_node *orig_node;
	struct sk_buff *skb;
	unsigned char *tvlv_buff;
	unsigned int tvlv_len;
	ssize_t hdr_len = sizeof(*unicast_tvlv_packet);

	orig_node = FUNC0(bat_priv, dst);
	if (!orig_node)
		return;

	tvlv_len = sizeof(*tvlv_hdr) + tvlv_value_len;

	skb = FUNC6(NULL, ETH_HLEN + hdr_len + tvlv_len);
	if (!skb)
		goto out;

	skb->priority = TC_PRIO_CONTROL;
	FUNC8(skb, ETH_HLEN);
	tvlv_buff = FUNC7(skb, sizeof(*unicast_tvlv_packet) + tvlv_len);
	unicast_tvlv_packet = (struct batadv_unicast_tvlv_packet *)tvlv_buff;
	unicast_tvlv_packet->packet_type = BATADV_UNICAST_TVLV;
	unicast_tvlv_packet->version = BATADV_COMPAT_VERSION;
	unicast_tvlv_packet->ttl = BATADV_TTL;
	unicast_tvlv_packet->reserved = 0;
	unicast_tvlv_packet->tvlv_len = FUNC4(tvlv_len);
	unicast_tvlv_packet->align = 0;
	FUNC3(unicast_tvlv_packet->src, src);
	FUNC3(unicast_tvlv_packet->dst, dst);

	tvlv_buff = (unsigned char *)(unicast_tvlv_packet + 1);
	tvlv_hdr = (struct batadv_tvlv_hdr *)tvlv_buff;
	tvlv_hdr->version = version;
	tvlv_hdr->type = type;
	tvlv_hdr->len = FUNC4(tvlv_value_len);
	tvlv_buff += sizeof(*tvlv_hdr);
	FUNC5(tvlv_buff, tvlv_value, tvlv_value_len);

	FUNC2(skb, orig_node, NULL);
out:
	FUNC1(orig_node);
}