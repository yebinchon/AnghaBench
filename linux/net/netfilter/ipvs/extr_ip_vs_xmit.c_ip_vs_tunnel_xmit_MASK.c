#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; int ignore_df; int /*<<< orphan*/  sk; int /*<<< orphan*/  len; int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; } ;
struct TYPE_5__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct netns_ipvs {struct net* net; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; void* ttl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; void* tos; void* protocol; int /*<<< orphan*/  frag_off; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip; } ;
struct ip_vs_conn {TYPE_2__ daddr; int /*<<< orphan*/  af; TYPE_3__* dest; struct netns_ipvs* ipvs; } ;
struct guehdr {int dummy; } ;
typedef  void* __u8 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_8__ {int /*<<< orphan*/  opt; } ;
struct TYPE_7__ {int tun_type; int tun_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GUE_LEN_PRIV ; 
 scalar_t__ GUE_PLEN_REMCSUM ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int IP_VS_CONN_F_TUNNEL_TYPE_GRE ; 
 int IP_VS_CONN_F_TUNNEL_TYPE_GUE ; 
 int IP_VS_RT_MODE_CONNECT ; 
 int IP_VS_RT_MODE_LOCAL ; 
 int IP_VS_RT_MODE_NON_LOCAL ; 
 int IP_VS_RT_MODE_TUNNEL ; 
 int IP_VS_TUNNEL_ENCAP_FLAG_CSUM ; 
 int IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int NF_STOLEN ; 
 int SKB_GSO_GRE ; 
 int SKB_GSO_GRE_CSUM ; 
 int SKB_GSO_TUNNEL_REMCSUM ; 
 int SKB_GSO_UDP_TUNNEL ; 
 int SKB_GSO_UDP_TUNNEL_CSUM ; 
 int /*<<< orphan*/  TUNNEL_CSUM ; 
 int FUNC5 (struct netns_ipvs*,int /*<<< orphan*/ ,struct sk_buff*,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct ip_vs_iphdr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,void**,int /*<<< orphan*/ *,void**,void**,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_conn*,int) ; 
 int FUNC13 (struct sk_buff*,struct ip_vs_conn*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct net*,struct sk_buff*,struct ip_vs_conn*,void**) ; 
 scalar_t__ FUNC16 (struct net*,struct sk_buff*,struct ip_vs_conn*,void**) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 struct rtable* FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,void*) ; 
 scalar_t__ FUNC23 (struct netns_ipvs*) ; 
 int /*<<< orphan*/  FUNC24 (int,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC25(struct sk_buff *skb, struct ip_vs_conn *cp,
		  struct ip_vs_protocol *pp, struct ip_vs_iphdr *ipvsh)
{
	struct netns_ipvs *ipvs = cp->ipvs;
	struct net *net = ipvs->net;
	struct rtable *rt;			/* Route to the other host */
	__be32 saddr;				/* Source for tunnel */
	struct net_device *tdev;		/* Device to other host */
	__u8 next_protocol = 0;
	__u8 dsfield = 0;
	__u8 ttl = 0;
	__be16 df = 0;
	__be16 *dfp = NULL;
	struct iphdr  *iph;			/* Our new IP header */
	unsigned int max_headroom;		/* The extra header space needed */
	int ret, local;
	int tun_type, gso_type;
	int tun_flags;

	FUNC0(10);

	local = FUNC5(ipvs, cp->af, skb, cp->dest, cp->daddr.ip,
				   IP_VS_RT_MODE_LOCAL |
				   IP_VS_RT_MODE_NON_LOCAL |
				   IP_VS_RT_MODE_CONNECT |
				   IP_VS_RT_MODE_TUNNEL, &saddr, ipvsh);
	if (local < 0)
		goto tx_error;
	if (local)
		return FUNC12(NFPROTO_IPV4, skb, cp, 1);

	rt = FUNC21(skb);
	tdev = rt->dst.dev;

	/*
	 * Okay, now see if we can stuff it in the buffer as-is.
	 */
	max_headroom = FUNC3(tdev) + sizeof(struct iphdr);

	tun_type = cp->dest->tun_type;
	tun_flags = cp->dest->tun_flags;

	if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
		size_t gue_hdrlen, gue_optlen = 0;

		if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM) &&
		    skb->ip_summed == CHECKSUM_PARTIAL) {
			gue_optlen += GUE_PLEN_REMCSUM + GUE_LEN_PRIV;
		}
		gue_hdrlen = sizeof(struct guehdr) + gue_optlen;

		max_headroom += sizeof(struct udphdr) + gue_hdrlen;
	} else if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE) {
		size_t gre_hdrlen;
		__be16 tflags = 0;

		if (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM)
			tflags |= TUNNEL_CSUM;
		gre_hdrlen = FUNC7(tflags);

		max_headroom += gre_hdrlen;
	}

	/* We only care about the df field if sysctl_pmtu_disc(ipvs) is set */
	dfp = FUNC23(ipvs) ? &df : NULL;
	skb = FUNC11(skb, cp->af, max_headroom,
					 &next_protocol, NULL, &dsfield,
					 &ttl, dfp);
	if (FUNC2(skb))
		goto tx_error;

	gso_type = FUNC6(AF_INET, cp->af);
	if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
		if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM) ||
		    (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM))
			gso_type |= SKB_GSO_UDP_TUNNEL_CSUM;
		else
			gso_type |= SKB_GSO_UDP_TUNNEL;
		if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM) &&
		    skb->ip_summed == CHECKSUM_PARTIAL) {
			gso_type |= SKB_GSO_TUNNEL_REMCSUM;
		}
	} else if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE) {
		if (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM)
			gso_type |= SKB_GSO_GRE_CSUM;
		else
			gso_type |= SKB_GSO_GRE;
	}

	if (FUNC14(skb, gso_type))
		goto tx_error;

	skb->transport_header = skb->network_header;

	FUNC22(skb, next_protocol);

	if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
		bool check = false;

		if (FUNC16(net, skb, cp, &next_protocol))
			goto tx_error;

		if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM) ||
		    (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM))
			check = true;

		FUNC24(!check, skb, saddr, cp->daddr.ip, skb->len);
	} else if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE)
		FUNC15(net, skb, cp, &next_protocol);

	FUNC19(skb, sizeof(struct iphdr));
	FUNC20(skb);
	FUNC18(&(FUNC1(skb)->opt), 0, sizeof(FUNC1(skb)->opt));

	/*
	 *	Push down and install the IPIP header.
	 */
	iph			=	FUNC8(skb);
	iph->version		=	4;
	iph->ihl		=	sizeof(struct iphdr)>>2;
	iph->frag_off		=	df;
	iph->protocol		=	next_protocol;
	iph->tos		=	dsfield;
	iph->daddr		=	cp->daddr.ip;
	iph->saddr		=	saddr;
	iph->ttl		=	ttl;
	FUNC10(net, skb, NULL);

	/* Another hack: avoid icmp_send in ip_fragment */
	skb->ignore_df = 1;

	ret = FUNC13(skb, cp);
	if (ret == NF_ACCEPT)
		FUNC9(net, skb->sk, skb);
	else if (ret == NF_DROP)
		FUNC17(skb);

	FUNC4(10);

	return NF_STOLEN;

  tx_error:
	if (!FUNC2(skb))
		FUNC17(skb);
	FUNC4(10);
	return NF_STOLEN;
}