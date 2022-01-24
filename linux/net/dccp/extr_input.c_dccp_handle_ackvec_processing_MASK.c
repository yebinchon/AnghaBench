#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_ackvec {int dummy; } ;
struct TYPE_4__ {scalar_t__ dccpd_ack_seq; } ;
struct TYPE_3__ {struct dccp_ackvec* dccps_hc_rx_ackvec; } ;

/* Variables and functions */
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct dccp_ackvec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dccp_ackvec*,struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct dccp_ackvec *av = FUNC3(sk)->dccps_hc_rx_ackvec;

	if (av == NULL)
		return;
	if (FUNC0(skb)->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
		FUNC1(av, FUNC0(skb)->dccpd_ack_seq);
	FUNC2(av, skb);
}