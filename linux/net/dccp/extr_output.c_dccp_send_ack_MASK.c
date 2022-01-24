#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; TYPE_2__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dccpd_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  ato; } ;
struct TYPE_7__ {TYPE_1__ icsk_ack; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_header; } ;

/* Variables and functions */
 scalar_t__ DCCP_CLOSED ; 
 int /*<<< orphan*/  DCCP_PKT_ACK ; 
 int /*<<< orphan*/  DCCP_RTO_MAX ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ICSK_TIME_DACK ; 
 int /*<<< orphan*/  TCP_ATO_MIN ; 
 int /*<<< orphan*/  TCP_DELACK_MAX ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 TYPE_3__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sock *sk)
{
	/* If we have been reset, we may not send again. */
	if (sk->sk_state != DCCP_CLOSED) {
		struct sk_buff *skb = FUNC1(sk->sk_prot->max_header,
						GFP_ATOMIC);

		if (skb == NULL) {
			FUNC5(sk);
			FUNC3(sk)->icsk_ack.ato = TCP_ATO_MIN;
			FUNC4(sk, ICSK_TIME_DACK,
						  TCP_DELACK_MAX,
						  DCCP_RTO_MAX);
			return;
		}

		/* Reserve space for headers */
		FUNC6(skb, sk->sk_prot->max_header);
		FUNC0(skb)->dccpd_type = DCCP_PKT_ACK;
		FUNC2(sk, skb);
	}
}