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
struct skb_shared_info {int tx_flags; int /*<<< orphan*/  tskey; } ;
typedef  struct sk_buff const sk_buff ;
struct TYPE_2__ {int /*<<< orphan*/  txstamp_ack; } ;

/* Variables and functions */
 int SKBTX_ANY_TSTAMP ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 void* FUNC1 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct sk_buff *skb,
			     const struct sk_buff *next_skb)
{
	if (FUNC3(FUNC2(next_skb))) {
		const struct skb_shared_info *next_shinfo =
			FUNC1(next_skb);
		struct skb_shared_info *shinfo = FUNC1(skb);

		shinfo->tx_flags |= next_shinfo->tx_flags & SKBTX_ANY_TSTAMP;
		shinfo->tskey = next_shinfo->tskey;
		FUNC0(skb)->txstamp_ack |=
			FUNC0(next_skb)->txstamp_ack;
	}
}