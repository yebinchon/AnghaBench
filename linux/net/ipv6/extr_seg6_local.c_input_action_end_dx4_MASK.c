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
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct seg6_local_lwt {TYPE_1__ nh4; } ;
struct iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				struct seg6_local_lwt *slwt)
{
	struct iphdr *iph;
	__be32 nhaddr;
	int err;

	if (!FUNC0(skb, IPPROTO_IPIP))
		goto drop;

	if (!FUNC6(skb, sizeof(struct iphdr)))
		goto drop;

	skb->protocol = FUNC2(ETH_P_IP);

	iph = FUNC3(skb);

	nhaddr = slwt->nh4.s_addr ?: iph->daddr;

	FUNC7(skb);

	err = FUNC4(skb, nhaddr, iph->saddr, 0, skb->dev);
	if (err)
		goto drop;

	return FUNC1(skb);

drop:
	FUNC5(skb);
	return -EINVAL;
}