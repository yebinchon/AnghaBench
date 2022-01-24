#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ check; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int SKB_GSO_TCPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcphdr*,unsigned int,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct tcphdr* FUNC5 (struct sk_buff*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, unsigned int ihl,
			     unsigned int ipl)
{
	struct tcphdr *tcph;
	const struct ipv6hdr *ip6h;

	if (FUNC3(skb) && FUNC4(skb)->gso_type & SKB_GSO_TCPV6)
		return 1;

	tcph = FUNC5(skb, ihl, ipl, sizeof(*tcph));
	if (tcph == NULL)
		return 0;

	ip6h = FUNC2(skb);
	tcph->check = 0;
	skb->csum = FUNC1(tcph, ipl - ihl, 0);
	tcph->check = FUNC0(&ip6h->saddr, &ip6h->daddr,
				      ipl - ihl, IPPROTO_TCP,
				      skb->csum);

	skb->ip_summed = CHECKSUM_NONE;

	return 1;
}