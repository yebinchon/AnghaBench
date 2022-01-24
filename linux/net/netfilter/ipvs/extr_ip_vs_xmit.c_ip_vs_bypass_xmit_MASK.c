#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int ignore_df; } ;
struct iphdr {int /*<<< orphan*/  daddr; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int /*<<< orphan*/  af; int /*<<< orphan*/  ipvs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IP_VS_RT_MODE_NON_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int NF_STOLEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ip_vs_iphdr*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

int
FUNC7(struct sk_buff *skb, struct ip_vs_conn *cp,
		  struct ip_vs_protocol *pp, struct ip_vs_iphdr *ipvsh)
{
	struct iphdr  *iph = FUNC3(skb);

	FUNC0(10);

	if (FUNC2(cp->ipvs, cp->af, skb, NULL, iph->daddr,
			       IP_VS_RT_MODE_NON_LOCAL, NULL, ipvsh) < 0)
		goto tx_error;

	FUNC4(iph);

	/* Another hack: avoid icmp_send in ip_fragment */
	skb->ignore_df = 1;

	FUNC5(NFPROTO_IPV4, skb, cp, 0);

	FUNC1(10);
	return NF_STOLEN;

 tx_error:
	FUNC6(skb);
	FUNC1(10);
	return NF_STOLEN;
}