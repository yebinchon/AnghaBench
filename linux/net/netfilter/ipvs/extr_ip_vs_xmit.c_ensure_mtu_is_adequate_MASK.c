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
struct sk_buff {int len; int /*<<< orphan*/  dev; } ;
struct netns_ipvs {struct net* net; } ;
struct net {int /*<<< orphan*/  loopback_dev; } ;
struct ip_vs_iphdr {int /*<<< orphan*/  fragoffs; } ;
struct TYPE_4__ {int frag_off; int /*<<< orphan*/  saddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int IP_VS_RT_MODE_TUNNEL ; 
 int FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_iphdr*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct netns_ipvs*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static inline bool FUNC12(struct netns_ipvs *ipvs, int skb_af,
					  int rt_mode,
					  struct ip_vs_iphdr *ipvsh,
					  struct sk_buff *skb, int mtu)
{
#ifdef CONFIG_IP_VS_IPV6
	if (skb_af == AF_INET6) {
		struct net *net = ipvs->net;

		if (unlikely(__mtu_check_toobig_v6(skb, mtu))) {
			if (!skb->dev)
				skb->dev = net->loopback_dev;
			/* only send ICMP too big on first fragment */
			if (!ipvsh->fragoffs && !ip_vs_iph_icmp(ipvsh))
				icmpv6_send(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
			IP_VS_DBG(1, "frag needed for %pI6c\n",
				  &ipv6_hdr(skb)->saddr);
			return false;
		}
	} else
#endif
	{
		/* If we're going to tunnel the packet and pmtu discovery
		 * is disabled, we'll just fragment it anyway
		 */
		if ((rt_mode & IP_VS_RT_MODE_TUNNEL) && !FUNC10(ipvs))
			return true;

		if (FUNC11(FUNC6(skb)->frag_off & FUNC3(IP_DF) &&
			     skb->len > mtu && !FUNC9(skb) &&
			     !FUNC7(ipvsh))) {
			FUNC4(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
				  FUNC2(mtu));
			FUNC0(1, "frag needed for %pI4\n",
				  &FUNC6(skb)->saddr);
			return false;
		}
	}

	return true;
}