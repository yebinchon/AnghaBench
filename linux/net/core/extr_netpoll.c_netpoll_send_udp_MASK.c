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
struct udphdr {int source; int dest; int len; scalar_t__ check; } ;
struct sk_buff {int protocol; TYPE_3__* dev; } ;
struct TYPE_5__ {int ip; int /*<<< orphan*/  in6; } ;
struct TYPE_4__ {int ip; int /*<<< orphan*/  in6; } ;
struct netpoll {int local_port; int remote_port; TYPE_3__* dev; int /*<<< orphan*/  remote_mac; TYPE_2__ remote_ip; TYPE_1__ local_ip; scalar_t__ ipv6; } ;
struct ipv6hdr {int payload_len; int hop_limit; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; void* nexthdr; scalar_t__* flow_lbl; } ;
struct iphdr {unsigned char tot_len; int id; int ttl; unsigned char saddr; unsigned char daddr; int /*<<< orphan*/  ihl; scalar_t__ check; void* protocol; scalar_t__ frag_off; scalar_t__ tos; } ;
struct ethhdr {int h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; scalar_t__ needed_tailroom; } ;

/* Variables and functions */
 void* CSUM_MANGLED_0 ; 
 int ETH_HLEN ; 
 int ETH_P_IP ; 
 int ETH_P_IPV6 ; 
 void* IPPROTO_UDP ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct udphdr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct netpoll*,scalar_t__,int) ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (unsigned char*,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC10 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct netpoll*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,char const*,int) ; 
 struct ethhdr* FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 struct udphdr* FUNC21 (struct sk_buff*) ; 

void FUNC22(struct netpoll *np, const char *msg, int len)
{
	int total_len, ip_len, udp_len;
	struct sk_buff *skb;
	struct udphdr *udph;
	struct iphdr *iph;
	struct ethhdr *eth;
	static atomic_t ip_ident;
	struct ipv6hdr *ip6h;

	FUNC1(!FUNC12());

	udp_len = len + sizeof(*udph);
	if (np->ipv6)
		ip_len = udp_len + sizeof(*ip6h);
	else
		ip_len = udp_len + sizeof(*iph);

	total_len = ip_len + FUNC0(np->dev);

	skb = FUNC7(np, total_len + np->dev->needed_tailroom,
		       total_len - len);
	if (!skb)
		return;

	FUNC15(skb, msg, len);
	FUNC17(skb, len);

	FUNC16(skb, sizeof(*udph));
	FUNC20(skb);
	udph = FUNC21(skb);
	udph->source = FUNC8(np->local_port);
	udph->dest = FUNC8(np->remote_port);
	udph->len = FUNC8(udp_len);

	if (np->ipv6) {
		udph->check = 0;
		udph->check = FUNC3(&np->local_ip.in6,
					      &np->remote_ip.in6,
					      udp_len, IPPROTO_UDP,
					      FUNC4(udph, udp_len, 0));
		if (udph->check == 0)
			udph->check = CSUM_MANGLED_0;

		FUNC16(skb, sizeof(*ip6h));
		FUNC19(skb);
		ip6h = FUNC11(skb);

		/* ip6h->version = 6; ip6h->priority = 0; */
		FUNC14(0x60, (unsigned char *)ip6h);
		ip6h->flow_lbl[0] = 0;
		ip6h->flow_lbl[1] = 0;
		ip6h->flow_lbl[2] = 0;

		ip6h->payload_len = FUNC8(sizeof(struct udphdr) + len);
		ip6h->nexthdr = IPPROTO_UDP;
		ip6h->hop_limit = 32;
		ip6h->saddr = np->local_ip.in6;
		ip6h->daddr = np->remote_ip.in6;

		eth = FUNC16(skb, ETH_HLEN);
		FUNC18(skb);
		skb->protocol = eth->h_proto = FUNC8(ETH_P_IPV6);
	} else {
		udph->check = 0;
		udph->check = FUNC5(np->local_ip.ip,
						np->remote_ip.ip,
						udp_len, IPPROTO_UDP,
						FUNC4(udph, udp_len, 0));
		if (udph->check == 0)
			udph->check = CSUM_MANGLED_0;

		FUNC16(skb, sizeof(*iph));
		FUNC19(skb);
		iph = FUNC10(skb);

		/* iph->version = 4; iph->ihl = 5; */
		FUNC14(0x45, (unsigned char *)iph);
		iph->tos      = 0;
		FUNC14(FUNC8(ip_len), &(iph->tot_len));
		iph->id       = FUNC8(FUNC2(&ip_ident));
		iph->frag_off = 0;
		iph->ttl      = 64;
		iph->protocol = IPPROTO_UDP;
		iph->check    = 0;
		FUNC14(np->local_ip.ip, &(iph->saddr));
		FUNC14(np->remote_ip.ip, &(iph->daddr));
		iph->check    = FUNC9((unsigned char *)iph, iph->ihl);

		eth = FUNC16(skb, ETH_HLEN);
		FUNC18(skb);
		skb->protocol = eth->h_proto = FUNC8(ETH_P_IP);
	}

	FUNC6(eth->h_source, np->dev->dev_addr);
	FUNC6(eth->h_dest, np->remote_mac);

	skb->dev = np->dev;

	FUNC13(np, skb);
}