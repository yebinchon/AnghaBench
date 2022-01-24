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
struct sk_buff {scalar_t__ mark; scalar_t__ ignore_df; scalar_t__ skb_iif; int /*<<< orphan*/  pkt_type; scalar_t__ tstamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, bool xnet)
{
	skb->tstamp = 0;
	skb->pkt_type = PACKET_HOST;
	skb->skb_iif = 0;
	skb->ignore_df = 0;
	FUNC4(skb);
	FUNC1(skb);
	FUNC2(skb);

	if (!xnet)
		return;

	FUNC0(skb);
	FUNC3(skb);
	FUNC5(skb);
	skb->mark = 0;
}