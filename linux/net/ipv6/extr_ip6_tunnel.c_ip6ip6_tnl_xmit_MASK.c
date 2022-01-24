#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_tlv_tnl_enc_lim {int encap_limit; } ;
struct TYPE_6__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_7__ {TYPE_1__ ipv6; } ;
struct ip_tunnel_key {int /*<<< orphan*/  tos; int /*<<< orphan*/  label; TYPE_2__ u; } ;
struct ip_tunnel_info {int mode; struct ip_tunnel_key key; } ;
struct TYPE_10__ {int flags; int encap_limit; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  flowinfo; scalar_t__ collect_md; int /*<<< orphan*/  proto; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip6; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct ip6_tnl {TYPE_5__ parms; TYPE_4__ fl; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowlabel; scalar_t__ flowi6_proto; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  fl6 ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  size_t __u32 ;
typedef  size_t __u16 ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 int /*<<< orphan*/  ICMPV6_PARAMPROB ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP6_TNL_F_IGN_ENCAP_LIMIT ; 
 int IP6_TNL_F_USE_ORIG_FLOWLABEL ; 
 int IP6_TNL_F_USE_ORIG_FWMARK ; 
 int IP6_TNL_F_USE_ORIG_TCLASS ; 
 scalar_t__ IPPROTO_IPV6 ; 
 int IP_TUNNEL_INFO_TX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKB_GSO_IPXIP6 ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ipv6hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ip6_tnl*,struct ipv6hdr*) ; 
 size_t FUNC7 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,struct flowi6*,int,size_t*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct ip_tunnel_info*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct flowi6*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 struct ip6_tnl* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 struct ip_tunnel_info* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static inline int
FUNC21(struct sk_buff *skb, struct net_device *dev)
{
	struct ip6_tnl *t = FUNC15(dev);
	struct ipv6hdr *ipv6h;
	int encap_limit = -1;
	__u16 offset;
	struct flowi6 fl6;
	__u8 dsfield;
	__u32 mtu;
	u8 tproto;
	int err;

	ipv6h = FUNC12(skb);
	tproto = FUNC1(t->parms.proto);
	if ((tproto != IPPROTO_IPV6 && tproto != 0) ||
	    FUNC6(t, ipv6h))
		return -1;

	if (t->parms.collect_md) {
		struct ip_tunnel_info *tun_info;
		const struct ip_tunnel_key *key;

		tun_info = FUNC18(skb);
		if (FUNC20(!tun_info || !(tun_info->mode & IP_TUNNEL_INFO_TX) ||
			     FUNC9(tun_info) != AF_INET6))
			return -1;
		key = &tun_info->key;
		FUNC14(&fl6, 0, sizeof(fl6));
		fl6.flowi6_proto = IPPROTO_IPV6;
		fl6.saddr = key->u.ipv6.src;
		fl6.daddr = key->u.ipv6.dst;
		fl6.flowlabel = key->label;
		dsfield = key->tos;
	} else {
		offset = FUNC7(skb, FUNC16(skb));
		/* ip6_tnl_parse_tlv_enc_lim() might have reallocated skb->head */
		ipv6h = FUNC12(skb);
		if (offset > 0) {
			struct ipv6_tlv_tnl_enc_lim *tel;

			tel = (void *)&FUNC16(skb)[offset];
			if (tel->encap_limit == 0) {
				FUNC3(skb, ICMPV6_PARAMPROB,
					    ICMPV6_HDR_FIELD, offset + 2);
				return -1;
			}
			encap_limit = tel->encap_limit - 1;
		} else if (!(t->parms.flags & IP6_TNL_F_IGN_ENCAP_LIMIT)) {
			encap_limit = t->parms.encap_limit;
		}

		FUNC13(&fl6, &t->fl.u.ip6, sizeof(fl6));
		fl6.flowi6_proto = IPPROTO_IPV6;

		if (t->parms.flags & IP6_TNL_F_USE_ORIG_TCLASS)
			dsfield = FUNC11(ipv6h);
		else
			dsfield = FUNC5(t->parms.flowinfo);
		if (t->parms.flags & IP6_TNL_F_USE_ORIG_FLOWLABEL)
			fl6.flowlabel |= FUNC4(ipv6h);
		if (t->parms.flags & IP6_TNL_F_USE_ORIG_FWMARK)
			fl6.flowi6_mark = skb->mark;
		else
			fl6.flowi6_mark = t->parms.fwmark;
	}

	fl6.flowi6_uid = FUNC19(FUNC2(dev), NULL);
	dsfield = FUNC0(dsfield, FUNC11(ipv6h));

	if (FUNC10(skb, SKB_GSO_IPXIP6))
		return -1;

	FUNC17(skb, IPPROTO_IPV6);

	err = FUNC8(skb, dev, dsfield, &fl6, encap_limit, &mtu,
			   IPPROTO_IPV6);
	if (err != 0) {
		if (err == -EMSGSIZE)
			FUNC3(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
		return -1;
	}

	return 0;
}