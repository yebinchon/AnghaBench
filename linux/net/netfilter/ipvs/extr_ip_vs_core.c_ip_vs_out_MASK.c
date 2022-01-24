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
struct sock {scalar_t__ sk_family; } ;
struct sk_buff {scalar_t__ dev; scalar_t__ ipvs_property; } ;
struct netns_ipvs {TYPE_1__* net; int /*<<< orphan*/  conn_out_counter; int /*<<< orphan*/  enable; } ;
struct ip_vs_protocol {scalar_t__ protocol; int /*<<< orphan*/  conn_out_get; int /*<<< orphan*/  dont_defrag; } ;
struct ip_vs_proto_data {struct ip_vs_protocol* pp; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int /*<<< orphan*/  off; int /*<<< orphan*/  len; int /*<<< orphan*/  saddr; } ;
struct ip_vs_conn {int dummy; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {scalar_t__ nodefrag; } ;
struct TYPE_3__ {scalar_t__ loopback_dev; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_PORT_UNREACH ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 struct ip_vs_conn* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netns_ipvs*,int,struct sk_buff*,struct ip_vs_iphdr*) ; 
 scalar_t__ IPPROTO_ICMP ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ IPPROTO_SCTP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ IP_VS_CONN_F_MASQ ; 
 int /*<<< orphan*/  FUNC2 (int,int,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct ip_vs_conn*) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 unsigned int NF_INET_LOCAL_OUT ; 
 unsigned int NF_STOLEN ; 
 scalar_t__ PF_INET ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_conn*) ; 
 struct ip_vs_conn* FUNC5 (unsigned int,struct netns_ipvs*,int,struct sk_buff*,struct ip_vs_iphdr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int,struct sk_buff*,struct ip_vs_proto_data*,struct ip_vs_conn*,struct ip_vs_iphdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_vs_conn_out_get_proto ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct sk_buff*,int,struct ip_vs_iphdr*) ; 
 scalar_t__ FUNC16 (struct netns_ipvs*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct netns_ipvs*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct netns_ipvs*,struct sk_buff*,int*,unsigned int) ; 
 int FUNC19 (struct netns_ipvs*,struct sk_buff*,int*,unsigned int,struct ip_vs_iphdr*) ; 
 struct ip_vs_proto_data* FUNC20 (struct netns_ipvs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 struct sock* FUNC25 (struct sk_buff*) ; 
 scalar_t__ FUNC26 (struct netns_ipvs*) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static unsigned int
FUNC28(struct netns_ipvs *ipvs, unsigned int hooknum, struct sk_buff *skb, int af)
{
	struct ip_vs_iphdr iph;
	struct ip_vs_protocol *pp;
	struct ip_vs_proto_data *pd;
	struct ip_vs_conn *cp;
	struct sock *sk;

	FUNC0(11);

	/* Already marked as IPVS request or reply? */
	if (skb->ipvs_property)
		return NF_ACCEPT;

	sk = FUNC25(skb);
	/* Bad... Do not break raw sockets */
	if (FUNC27(sk && hooknum == NF_INET_LOCAL_OUT &&
		     af == AF_INET)) {

		if (sk->sk_family == PF_INET && FUNC11(sk)->nodefrag)
			return NF_ACCEPT;
	}

	if (FUNC27(!FUNC24(skb)))
		return NF_ACCEPT;

	if (!ipvs->enable)
		return NF_ACCEPT;

	FUNC15(af, skb, false, &iph);
#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6) {
		if (unlikely(iph.protocol == IPPROTO_ICMPV6)) {
			int related;
			int verdict = ip_vs_out_icmp_v6(ipvs, skb, &related,
							hooknum, &iph);

			if (related)
				return verdict;
		}
	} else
#endif
		if (FUNC27(iph.protocol == IPPROTO_ICMP)) {
			int related;
			int verdict = FUNC18(ipvs, skb, &related, hooknum);

			if (related)
				return verdict;
		}

	pd = FUNC20(ipvs, iph.protocol);
	if (FUNC27(!pd))
		return NF_ACCEPT;
	pp = pd->pp;

	/* reassemble IP fragments */
#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET)
#endif
		if (FUNC27(FUNC13(FUNC12(skb)) && !pp->dont_defrag)) {
			if (FUNC16(ipvs, skb,
					       FUNC14(hooknum)))
				return NF_STOLEN;

			FUNC15(AF_INET, skb, false, &iph);
		}

	/*
	 * Check if the packet belongs to an existing entry
	 */
	cp = FUNC1(pp->conn_out_get, ip_vs_conn_out_get_proto,
			     ipvs, af, skb, &iph);

	if (FUNC23(cp)) {
		if (FUNC3(cp) != IP_VS_CONN_F_MASQ)
			goto ignore_cp;
		return FUNC8(af, skb, pd, cp, &iph, hooknum);
	}

	/* Check for real-server-started requests */
	if (FUNC6(&ipvs->conn_out_counter)) {
		/* Currently only for UDP:
		 * connection oriented protocols typically use
		 * ephemeral ports for outgoing connections, so
		 * related incoming responses would not match any VS
		 */
		if (pp->protocol == IPPROTO_UDP) {
			cp = FUNC5(hooknum, ipvs, af, skb, &iph);
			if (FUNC23(cp))
				return FUNC8(af, skb, pd, cp, &iph,
						       hooknum);
		}
	}

	if (FUNC26(ipvs) &&
	    (pp->protocol == IPPROTO_TCP ||
	     pp->protocol == IPPROTO_UDP ||
	     pp->protocol == IPPROTO_SCTP)) {
		__be16 _ports[2], *pptr;

		pptr = FUNC7(skb, iph.len,
					 sizeof(_ports), _ports);
		if (pptr == NULL)
			return NF_ACCEPT;	/* Not for me */
		if (FUNC17(ipvs, af, iph.protocol, &iph.saddr,
					   pptr[0])) {
			/*
			 * Notify the real server: there is no
			 * existing entry if it is not RST
			 * packet or not TCP packet.
			 */
			if ((iph.protocol != IPPROTO_TCP &&
			     iph.protocol != IPPROTO_SCTP)
			     || ((iph.protocol == IPPROTO_TCP
				  && !FUNC22(skb, iph.len))
				 || (iph.protocol == IPPROTO_SCTP
					&& !FUNC21(skb,
						iph.len)))) {
#ifdef CONFIG_IP_VS_IPV6
				if (af == AF_INET6) {
					if (!skb->dev)
						skb->dev = ipvs->net->loopback_dev;
					icmpv6_send(skb,
						    ICMPV6_DEST_UNREACH,
						    ICMPV6_PORT_UNREACH,
						    0);
				} else
#endif
					FUNC9(skb,
						  ICMP_DEST_UNREACH,
						  ICMP_PORT_UNREACH, 0);
				return NF_DROP;
			}
		}
	}

out:
	FUNC2(12, af, pp, skb, iph.off,
		      "ip_vs_out: packet continues traversal as normal");
	return NF_ACCEPT;

ignore_cp:
	FUNC4(cp);
	goto out;
}