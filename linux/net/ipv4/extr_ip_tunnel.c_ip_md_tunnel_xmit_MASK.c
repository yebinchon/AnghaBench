#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int protocol; int /*<<< orphan*/  mark; } ;
struct TYPE_12__ {scalar_t__ header_len; struct net_device* dev; } ;
struct rtable {TYPE_5__ dst; } ;
struct TYPE_11__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {scalar_t__ needed_headroom; TYPE_4__ stats; } ;
struct ipv6hdr {int hop_limit; } ;
struct iphdr {int tos; int ttl; int frag_off; } ;
struct TYPE_9__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_10__ {TYPE_2__ ipv4; } ;
struct ip_tunnel_key {int tos; int tun_flags; int ttl; TYPE_3__ u; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {int mode; int /*<<< orphan*/  dst_cache; struct ip_tunnel_key key; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ip_tunnel {int /*<<< orphan*/  net; TYPE_1__ encap; } ;
struct flowi4 {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int __be16 ;
struct TYPE_13__ {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP_DF ; 
 int IP_TUNNEL_INFO_TX ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TUNNEL_DONT_FRAGMENT ; 
 scalar_t__ TUNNEL_ENCAP_NONE ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct rtable* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*) ; 
 struct rtable* FUNC9 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtable*) ; 
 int FUNC11 (struct sk_buff*,struct ip_tunnel_info*) ; 
 int FUNC12 (int,struct iphdr const*,struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct flowi4*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct rtable*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int FUNC16 (struct ipv6hdr const*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC20 (struct net_device*) ; 
 scalar_t__ FUNC21 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (struct sk_buff*) ; 
 struct ip_tunnel_info* FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct net_device*,struct sk_buff*,struct rtable*,int,struct iphdr const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 

void FUNC28(struct sk_buff *skb, struct net_device *dev,
		       u8 proto, int tunnel_hlen)
{
	struct ip_tunnel *tunnel = FUNC20(dev);
	u32 headroom = sizeof(struct iphdr);
	struct ip_tunnel_info *tun_info;
	const struct ip_tunnel_key *key;
	const struct iphdr *inner_iph;
	struct rtable *rt = NULL;
	struct flowi4 fl4;
	__be16 df = 0;
	u8 tos, ttl;
	bool use_cache;

	tun_info = FUNC24(skb);
	if (FUNC27(!tun_info || !(tun_info->mode & IP_TUNNEL_INFO_TX) ||
		     FUNC13(tun_info) != AF_INET))
		goto tx_error;
	key = &tun_info->key;
	FUNC18(&(FUNC0(skb)->opt), 0, sizeof(FUNC0(skb)->opt));
	inner_iph = (const struct iphdr *)FUNC23(skb);
	tos = key->tos;
	if (tos == 1) {
		if (skb->protocol == FUNC7(ETH_P_IP))
			tos = inner_iph->tos;
		else if (skb->protocol == FUNC7(ETH_P_IPV6))
			tos = FUNC16((const struct ipv6hdr *)inner_iph);
	}
	FUNC14(&fl4, proto, key->u.ipv4.dst, key->u.ipv4.src,
			    FUNC26(key->tun_id), FUNC3(tos),
			    0, skb->mark, FUNC22(skb));
	if (tunnel->encap.type != TUNNEL_ENCAP_NONE)
		goto tx_error;

	use_cache = FUNC11(skb, tun_info);
	if (use_cache)
		rt = FUNC5(&tun_info->dst_cache, &fl4.saddr);
	if (!rt) {
		rt = FUNC9(tunnel->net, &fl4);
		if (FUNC1(rt)) {
			dev->stats.tx_carrier_errors++;
			goto tx_error;
		}
		if (use_cache)
			FUNC6(&tun_info->dst_cache, &rt->dst,
					  fl4.saddr);
	}
	if (rt->dst.dev == dev) {
		FUNC10(rt);
		dev->stats.collisions++;
		goto tx_error;
	}

	if (key->tun_flags & TUNNEL_DONT_FRAGMENT)
		df = FUNC7(IP_DF);
	if (FUNC25(dev, skb, rt, df, inner_iph, tunnel_hlen,
			    key->u.ipv4.dst, true)) {
		FUNC10(rt);
		goto tx_error;
	}

	tos = FUNC12(tos, inner_iph, skb);
	ttl = key->ttl;
	if (ttl == 0) {
		if (skb->protocol == FUNC7(ETH_P_IP))
			ttl = inner_iph->ttl;
		else if (skb->protocol == FUNC7(ETH_P_IPV6))
			ttl = ((const struct ipv6hdr *)inner_iph)->hop_limit;
		else
			ttl = FUNC8(&rt->dst);
	}

	if (!df && skb->protocol == FUNC7(ETH_P_IP))
		df = inner_iph->frag_off & FUNC7(IP_DF);

	headroom += FUNC2(rt->dst.dev) + rt->dst.header_len;
	if (headroom > dev->needed_headroom)
		dev->needed_headroom = headroom;

	if (FUNC21(skb, dev->needed_headroom)) {
		FUNC10(rt);
		goto tx_dropped;
	}
	FUNC15(NULL, rt, skb, fl4.saddr, fl4.daddr, proto, tos, ttl,
		      df, !FUNC19(tunnel->net, FUNC4(dev)));
	return;
tx_error:
	dev->stats.tx_errors++;
	goto kfree;
tx_dropped:
	dev->stats.tx_dropped++;
kfree:
	FUNC17(skb);
}