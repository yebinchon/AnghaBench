#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_3__* dev; int /*<<< orphan*/  mark; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {int mode; TYPE_2__ key; } ;
struct TYPE_5__ {int /*<<< orphan*/  tun_id; } ;
struct flowi6 {scalar_t__ flowi6_proto; int /*<<< orphan*/  mp_hash; TYPE_1__ flowi6_tun_key; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_iif; } ;
struct flow_keys {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_ICMPV6 ; 
 int IP_TUNNEL_INFO_TX ; 
 int RT6_LOOKUP_F_DST_NOREF ; 
 int RT6_LOOKUP_F_HAS_SADDR ; 
 struct net* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct net*,struct sk_buff*,struct flowi6*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6hdr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,TYPE_3__*,struct flowi6*,struct sk_buff*,int) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct flowi6*,struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel_info* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct sk_buff *skb)
{
	const struct ipv6hdr *iph = FUNC4(skb);
	struct net *net = FUNC0(skb->dev);
	int flags = RT6_LOOKUP_F_HAS_SADDR | RT6_LOOKUP_F_DST_NOREF;
	struct ip_tunnel_info *tun_info;
	struct flowi6 fl6 = {
		.flowi6_iif = skb->dev->ifindex,
		.daddr = iph->daddr,
		.saddr = iph->saddr,
		.flowlabel = FUNC2(iph),
		.flowi6_mark = skb->mark,
		.flowi6_proto = iph->nexthdr,
	};
	struct flow_keys *flkeys = NULL, _flkeys;

	tun_info = FUNC8(skb);
	if (tun_info && !(tun_info->mode & IP_TUNNEL_INFO_TX))
		fl6.flowi6_tun_key.tun_id = tun_info->key.tun_id;

	if (FUNC1(net, skb, &fl6, &_flkeys))
		flkeys = &_flkeys;

	if (FUNC9(fl6.flowi6_proto == IPPROTO_ICMPV6))
		fl6.mp_hash = FUNC5(net, &fl6, skb, flkeys);
	FUNC6(skb);
	FUNC7(skb, FUNC3(net, skb->dev,
						      &fl6, skb, flags));
}