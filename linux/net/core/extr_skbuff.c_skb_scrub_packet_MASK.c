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
struct sk_buff {scalar_t__ tstamp; scalar_t__ mark; scalar_t__ offload_l3_fwd_mark; scalar_t__ offload_fwd_mark; scalar_t__ ignore_df; scalar_t__ skb_iif; int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

void FUNC5(struct sk_buff *skb, bool xnet)
{
	skb->pkt_type = PACKET_HOST;
	skb->skb_iif = 0;
	skb->ignore_df = 0;
	FUNC3(skb);
	FUNC4(skb);
	FUNC1(skb);
	FUNC2(skb);

#ifdef CONFIG_NET_SWITCHDEV
	skb->offload_fwd_mark = 0;
	skb->offload_l3_fwd_mark = 0;
#endif

	if (!xnet)
		return;

	FUNC0(skb);
	skb->mark = 0;
	skb->tstamp = 0;
}