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
typedef  int u32 ;
struct sk_buff {int len; } ;
struct iphdr {int ihl; int version; int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb)
{
	struct iphdr *iph;
	u32 len;

	if (!FUNC2(skb, sizeof(struct iphdr)))
		return 0;

	iph = FUNC0(skb);
	if (iph->ihl < 5 || iph->version != 4)
		return 0;

	len = FUNC1(iph->tot_len);
	if (skb->len < len)
		return 0;
	else if (len < (iph->ihl*4))
		return 0;

	if (!FUNC2(skb, iph->ihl*4))
		return 0;

	return 1;
}