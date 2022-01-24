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
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  FUNC0 (struct tcphdr*,unsigned int,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct tcphdr* FUNC4 (struct sk_buff*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, unsigned int ihl,
			     unsigned int ipl)
{
	struct tcphdr *tcph;
	const struct iphdr *iph;

	if (FUNC2(skb) && FUNC3(skb)->gso_type & SKB_GSO_TCPV4)
		return 1;

	tcph = FUNC4(skb, ihl, ipl, sizeof(*tcph));
	if (tcph == NULL)
		return 0;

	iph = FUNC1(skb);
	tcph->check = 0;
	skb->csum = FUNC0(tcph, ipl - ihl, 0);
	tcph->check = FUNC5(ipl - ihl,
				   iph->saddr, iph->daddr, skb->csum);

	skb->ip_summed = CHECKSUM_NONE;

	return 1;
}