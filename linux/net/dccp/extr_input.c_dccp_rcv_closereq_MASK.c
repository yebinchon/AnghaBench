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
struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccpd_seq; } ;
struct TYPE_3__ {scalar_t__ dccps_role; } ;

/* Variables and functions */
 int DCCP_CLOSING ; 
#define  DCCP_OPEN 131 
#define  DCCP_PARTOPEN 130 
#define  DCCP_PASSIVE_CLOSEREQ 129 
 int /*<<< orphan*/  DCCP_PKT_SYNC ; 
#define  DCCP_REQUESTING 128 
 scalar_t__ DCCP_ROLE_CLIENT ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	int queued = 0;

	/*
	 *   Step 7: Check for unexpected packet types
	 *      If (S.is_server and P.type == CloseReq)
	 *	  Send Sync packet acknowledging P.seqno
	 *	  Drop packet and return
	 */
	if (FUNC5(sk)->dccps_role != DCCP_ROLE_CLIENT) {
		FUNC3(sk, FUNC0(skb)->dccpd_seq, DCCP_PKT_SYNC);
		return queued;
	}

	/* Step 13: process relevant Client states < CLOSEREQ */
	switch (sk->sk_state) {
	case DCCP_REQUESTING:
		FUNC2(sk, 0);
		FUNC4(sk, DCCP_CLOSING);
		break;
	case DCCP_OPEN:
	case DCCP_PARTOPEN:
		/* Give waiting application a chance to read pending data */
		queued = 1;
		FUNC1(sk, skb);
		FUNC4(sk, DCCP_PASSIVE_CLOSEREQ);
		/* fall through */
	case DCCP_PASSIVE_CLOSEREQ:
		FUNC6(sk, SOCK_WAKE_WAITD, POLL_HUP);
	}
	return queued;
}