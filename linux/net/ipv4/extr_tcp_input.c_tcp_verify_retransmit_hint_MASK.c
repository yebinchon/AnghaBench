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
struct tcp_sock {struct sk_buff* retransmit_skb_hint; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tcp_sock *tp, struct sk_buff *skb)
{
	if (!tp->retransmit_skb_hint ||
	    FUNC1(FUNC0(skb)->seq,
		   FUNC0(tp->retransmit_skb_hint)->seq))
		tp->retransmit_skb_hint = skb;
}