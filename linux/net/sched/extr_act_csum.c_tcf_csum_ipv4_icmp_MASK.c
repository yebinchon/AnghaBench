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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; } ;
struct icmphdr {scalar_t__ checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct icmphdr*,unsigned int,int /*<<< orphan*/ ) ; 
 struct icmphdr* FUNC2 (struct sk_buff*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, unsigned int ihl,
			      unsigned int ipl)
{
	struct icmphdr *icmph;

	icmph = FUNC2(skb, ihl, ipl, sizeof(*icmph));
	if (icmph == NULL)
		return 0;

	icmph->checksum = 0;
	skb->csum = FUNC1(icmph, ipl - ihl, 0);
	icmph->checksum = FUNC0(skb->csum);

	skb->ip_summed = CHECKSUM_NONE;

	return 1;
}