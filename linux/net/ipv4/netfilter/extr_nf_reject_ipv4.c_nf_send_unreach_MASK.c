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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct iphdr {int frag_off; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  IP_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

void FUNC7(struct sk_buff *skb_in, int code, int hook)
{
	struct iphdr *iph = FUNC2(skb_in);
	u8 proto = iph->protocol;

	if (iph->frag_off & FUNC0(IP_OFFSET))
		return;

	if (FUNC6(skb_in) || !FUNC5(proto)) {
		FUNC1(skb_in, ICMP_DEST_UNREACH, code, 0);
		return;
	}

	if (FUNC4(skb_in, hook, FUNC3(skb_in), proto) == 0)
		FUNC1(skb_in, ICMP_DEST_UNREACH, code, 0);
}