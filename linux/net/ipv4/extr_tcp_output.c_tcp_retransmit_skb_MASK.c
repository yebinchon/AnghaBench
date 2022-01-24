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
struct tcp_sock {scalar_t__ undo_retrans; scalar_t__ retrans_stamp; int /*<<< orphan*/  retrans_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;

/* Variables and functions */
 int TCPCB_RETRANS ; 
 int TCPCB_SACKED_RETRANS ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sock *sk, struct sk_buff *skb, int segs)
{
	struct tcp_sock *tp = FUNC3(sk);
	int err = FUNC1(sk, skb, segs);

	if (err == 0) {
#if FASTRETRANS_DEBUG > 0
		if (TCP_SKB_CB(skb)->sacked & TCPCB_SACKED_RETRANS) {
			net_dbg_ratelimited("retrans_out leaked\n");
		}
#endif
		FUNC0(skb)->sacked |= TCPCB_RETRANS;
		tp->retrans_out += FUNC4(skb);
	}

	/* Save stamp of the first (attempted) retransmit. */
	if (!tp->retrans_stamp)
		tp->retrans_stamp = FUNC5(skb);

	if (tp->undo_retrans < 0)
		tp->undo_retrans = 0;
	tp->undo_retrans += FUNC4(skb);
	return err;
}