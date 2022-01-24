#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {scalar_t__ data; TYPE_3__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int protocol; int ihl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  o_key; } ;
struct ip_tunnel {TYPE_1__ parms; } ;
struct ip_esp_hdr {int /*<<< orphan*/  spi; } ;
struct ip_comp_hdr {int /*<<< orphan*/  cpi; } ;
struct ip_auth_hdr {int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
#define  ICMP_DEST_UNREACH 132 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
#define  ICMP_REDIRECT 131 
#define  IPPROTO_AH 130 
#define  IPPROTO_COMP 129 
#define  IPPROTO_ESP 128 
 int /*<<< orphan*/  TUNNEL_NO_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC4 (struct ip_tunnel_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ip_tunnel_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vti_net_id ; 
 struct xfrm_state* FUNC9 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, u32 info)
{
	__be32 spi;
	__u32 mark;
	struct xfrm_state *x;
	struct ip_tunnel *tunnel;
	struct ip_esp_hdr *esph;
	struct ip_auth_hdr *ah ;
	struct ip_comp_hdr *ipch;
	struct net *net = FUNC1(skb->dev);
	const struct iphdr *iph = (const struct iphdr *)skb->data;
	int protocol = iph->protocol;
	struct ip_tunnel_net *itn = FUNC7(net, vti_net_id);

	tunnel = FUNC4(itn, skb->dev->ifindex, TUNNEL_NO_KEY,
				  iph->daddr, iph->saddr, 0);
	if (!tunnel)
		return -1;

	mark = FUNC0(tunnel->parms.o_key);

	switch (protocol) {
	case IPPROTO_ESP:
		esph = (struct ip_esp_hdr *)(skb->data+(iph->ihl<<2));
		spi = esph->spi;
		break;
	case IPPROTO_AH:
		ah = (struct ip_auth_hdr *)(skb->data+(iph->ihl<<2));
		spi = ah->spi;
		break;
	case IPPROTO_COMP:
		ipch = (struct ip_comp_hdr *)(skb->data+(iph->ihl<<2));
		spi = FUNC2(FUNC8(ipch->cpi));
		break;
	default:
		return 0;
	}

	switch (FUNC3(skb)->type) {
	case ICMP_DEST_UNREACH:
		if (FUNC3(skb)->code != ICMP_FRAG_NEEDED)
			return 0;
	case ICMP_REDIRECT:
		break;
	default:
		return 0;
	}

	x = FUNC9(net, mark, (const xfrm_address_t *)&iph->daddr,
			      spi, protocol, AF_INET);
	if (!x)
		return 0;

	if (FUNC3(skb)->type == ICMP_DEST_UNREACH)
		FUNC6(skb, net, info, 0, protocol);
	else
		FUNC5(skb, net, 0, protocol);
	FUNC10(x);

	return 0;
}