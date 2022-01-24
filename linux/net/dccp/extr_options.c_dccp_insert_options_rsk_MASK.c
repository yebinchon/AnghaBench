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
struct sk_buff {int dummy; } ;
struct dccp_request_sock {scalar_t__ dreq_timestamp_echo; } ;
struct TYPE_2__ {scalar_t__ dccpd_opt_len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct dccp_request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct dccp_request_sock*,struct sk_buff*) ; 

int FUNC5(struct dccp_request_sock *dreq, struct sk_buff *skb)
{
	FUNC0(skb)->dccpd_opt_len = 0;

	if (FUNC1(NULL, dreq, skb))
		return -1;

	/* Obtain RTT sample from Response/Ack exchange (used by TFRC). */
	if (FUNC3(skb))
		return -1;

	if (dreq->dreq_timestamp_echo != 0 &&
	    FUNC4(NULL, dreq, skb))
		return -1;

	FUNC2(skb);
	return 0;
}