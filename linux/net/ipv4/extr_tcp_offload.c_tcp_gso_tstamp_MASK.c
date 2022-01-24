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
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {unsigned int tskey; int /*<<< orphan*/  tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKBTX_SW_TSTAMP ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, unsigned int ts_seq,
			   unsigned int seq, unsigned int mss)
{
	while (skb) {
		if (FUNC0(ts_seq, seq + mss)) {
			FUNC1(skb)->tx_flags |= SKBTX_SW_TSTAMP;
			FUNC1(skb)->tskey = ts_seq;
			return;
		}

		skb = skb->next;
		seq += mss;
	}
}