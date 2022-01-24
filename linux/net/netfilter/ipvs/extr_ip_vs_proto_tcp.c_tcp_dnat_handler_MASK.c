#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ check; int /*<<< orphan*/  dest; } ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {unsigned int len; scalar_t__ fragoffs; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct ip_vs_conn {scalar_t__ af; int /*<<< orphan*/  protocol; TYPE_2__ daddr; TYPE_1__ caddr; int /*<<< orphan*/ * app; int /*<<< orphan*/  dport; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ CHECKSUM_COMPLETE ; 
 void* CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 void* CHECKSUM_UNNECESSARY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (struct ip_vs_conn*,struct sk_buff*,struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct tcphdr*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct tcphdr*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct sk_buff *skb, struct ip_vs_protocol *pp,
		 struct ip_vs_conn *cp, struct ip_vs_iphdr *iph)
{
	struct tcphdr *tcph;
	unsigned int tcphoff = iph->len;
	bool payload_csum = false;
	int oldlen;

#ifdef CONFIG_IP_VS_IPV6
	if (cp->af == AF_INET6 && iph->fragoffs)
		return 1;
#endif
	oldlen = skb->len - tcphoff;

	/* csum_check requires unshared skb */
	if (FUNC5(skb, tcphoff + sizeof(*tcph)))
		return 0;

	if (FUNC10(cp->app != NULL)) {
		int ret;

		/* Some checks before mangling */
		if (!FUNC7(cp->af, skb, pp))
			return 0;

		/*
		 *	Attempt ip_vs_app call.
		 *	It will fix ip_vs_conn and iph ack_seq stuff
		 */
		if (!(ret = FUNC3(cp, skb, iph)))
			return 0;
		/* ret=2: csum update is needed after payload mangling */
		if (ret == 1)
			oldlen = skb->len - tcphoff;
		else
			payload_csum = true;
	}

	tcph = (void *)FUNC6(skb) + tcphoff;
	tcph->dest = cp->dport;

	/*
	 *	Adjust TCP checksums
	 */
	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		FUNC9(cp->af, tcph, &cp->vaddr, &cp->daddr,
					FUNC2(oldlen),
					FUNC2(skb->len - tcphoff));
	} else if (!payload_csum) {
		/* Only port and addr are changed, do fast csum update */
		FUNC8(cp->af, tcph, &cp->vaddr, &cp->daddr,
				     cp->vport, cp->dport);
		if (skb->ip_summed == CHECKSUM_COMPLETE)
			skb->ip_summed = cp->app ?
					 CHECKSUM_UNNECESSARY : CHECKSUM_NONE;
	} else {
		/* full checksum calculation */
		tcph->check = 0;
		skb->csum = FUNC4(skb, tcphoff, skb->len - tcphoff, 0);
#ifdef CONFIG_IP_VS_IPV6
		if (cp->af == AF_INET6)
			tcph->check = csum_ipv6_magic(&cp->caddr.in6,
						      &cp->daddr.in6,
						      skb->len - tcphoff,
						      cp->protocol, skb->csum);
		else
#endif
			tcph->check = FUNC1(cp->caddr.ip,
							cp->daddr.ip,
							skb->len - tcphoff,
							cp->protocol,
							skb->csum);
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	}
	return 1;
}