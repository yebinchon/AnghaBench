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
struct igmphdr {scalar_t__ csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igmphdr*,unsigned int,int /*<<< orphan*/ ) ; 
 struct igmphdr* FUNC2 (struct sk_buff*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			      unsigned int ihl, unsigned int ipl)
{
	struct igmphdr *igmph;

	igmph = FUNC2(skb, ihl, ipl, sizeof(*igmph));
	if (igmph == NULL)
		return 0;

	igmph->csum = 0;
	skb->csum = FUNC1(igmph, ipl - ihl, 0);
	igmph->csum = FUNC0(skb->csum);

	skb->ip_summed = CHECKSUM_NONE;

	return 1;
}