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
struct sk_buff {scalar_t__ ip_summed; } ;
struct sctphdr {scalar_t__ dest; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {unsigned int len; scalar_t__ fragoffs; } ;
struct ip_vs_conn {scalar_t__ af; scalar_t__ dport; int /*<<< orphan*/ * app; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 int NETIF_F_SCTP_CRC ; 
 int FUNC0 (struct ip_vs_conn*,struct sk_buff*,struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sctphdr*,unsigned int) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *skb, struct ip_vs_protocol *pp,
		  struct ip_vs_conn *cp, struct ip_vs_iphdr *iph)
{
	struct sctphdr *sctph;
	unsigned int sctphoff = iph->len;
	bool payload_csum = false;

#ifdef CONFIG_IP_VS_IPV6
	if (cp->af == AF_INET6 && iph->fragoffs)
		return 1;
#endif

	/* csum_check requires unshared skb */
	if (FUNC4(skb, sctphoff + sizeof(*sctph)))
		return 0;

	if (FUNC6(cp->app != NULL)) {
		int ret;

		/* Some checks before mangling */
		if (!FUNC1(cp->af, skb, pp))
			return 0;

		/* Call application helper if needed */
		ret = FUNC0(cp, skb, iph);
		if (ret == 0)
			return 0;
		/* ret=2: csum update is needed after payload mangling */
		if (ret == 2)
			payload_csum = true;
	}

	sctph = (void *) FUNC5(skb) + sctphoff;

	/* Only update csum if we really have to */
	if (sctph->dest != cp->dport || payload_csum ||
	    (skb->ip_summed == CHECKSUM_PARTIAL &&
	     !(FUNC3(skb)->dev->features & NETIF_F_SCTP_CRC))) {
		sctph->dest = cp->dport;
		FUNC2(skb, sctph, sctphoff);
	} else if (skb->ip_summed != CHECKSUM_PARTIAL) {
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	}

	return 1;
}