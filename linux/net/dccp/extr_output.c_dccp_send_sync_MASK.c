#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
typedef  enum dccp_pkt_type { ____Placeholder_dccp_pkt_type } dccp_pkt_type ;
struct TYPE_6__ {int dccpd_type; int /*<<< orphan*/  dccpd_ack_seq; } ;
struct TYPE_5__ {scalar_t__ dccps_sync_scheduled; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sock *sk, const u64 ackno,
		    const enum dccp_pkt_type pkt_type)
{
	/*
	 * We are not putting this on the write queue, so
	 * dccp_transmit_skb() will set the ownership to this
	 * sock.
	 */
	struct sk_buff *skb = FUNC2(sk->sk_prot->max_header, GFP_ATOMIC);

	if (skb == NULL) {
		/* FIXME: how to make sure the sync is sent? */
		FUNC0("could not send %s", FUNC3(pkt_type));
		return;
	}

	/* Reserve space for headers and prepare control bits. */
	FUNC6(skb, sk->sk_prot->max_header);
	FUNC1(skb)->dccpd_type = pkt_type;
	FUNC1(skb)->dccpd_ack_seq = ackno;

	/*
	 * Clear the flag in case the Sync was scheduled for out-of-band data,
	 * such as carrying a long Ack Vector.
	 */
	FUNC4(sk)->dccps_sync_scheduled = 0;

	FUNC5(sk, skb);
}