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
struct sk_buff {scalar_t__ csum_not_inet; int /*<<< orphan*/  ip_summed; } ;
struct sctphdr {int /*<<< orphan*/  checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sctphdr* FUNC4 (struct sk_buff*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, unsigned int ihl,
			 unsigned int ipl)
{
	struct sctphdr *sctph;

	if (FUNC1(skb) && FUNC2(skb))
		return 1;

	sctph = FUNC4(skb, ihl, ipl, sizeof(*sctph));
	if (!sctph)
		return 0;

	sctph->checksum = FUNC0(skb,
					     FUNC3(skb) + ihl);
	skb->ip_summed = CHECKSUM_NONE;
	skb->csum_not_inet = 0;

	return 1;
}