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
typedef  void* u32 ;
struct TYPE_2__ {int num_sacks; } ;
struct tcp_sock {scalar_t__ compressed_ack; TYPE_1__ rx_opt; struct tcp_sack_block* selective_acks; } ;
struct tcp_sack_block {void* end_seq; void* start_seq; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCP_FASTRETRANS_THRESH ; 
 int TCP_NUM_SACKS ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_sack_block,struct tcp_sack_block) ; 
 scalar_t__ FUNC1 (struct tcp_sack_block*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 seq, u32 end_seq)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct tcp_sack_block *sp = &tp->selective_acks[0];
	int cur_sacks = tp->rx_opt.num_sacks;
	int this_sack;

	if (!cur_sacks)
		goto new_sack;

	for (this_sack = 0; this_sack < cur_sacks; this_sack++, sp++) {
		if (FUNC1(sp, seq, end_seq)) {
			/* Rotate this_sack to the first one. */
			for (; this_sack > 0; this_sack--, sp--)
				FUNC0(*sp, *(sp - 1));
			if (cur_sacks > 1)
				FUNC2(tp);
			return;
		}
	}

	/* Could not find an adjacent existing SACK, build a new one,
	 * put it at the front, and shift everyone else down.  We
	 * always know there is at least one SACK present already here.
	 *
	 * If the sack array is full, forget about the last one.
	 */
	if (this_sack >= TCP_NUM_SACKS) {
		if (tp->compressed_ack > TCP_FASTRETRANS_THRESH)
			FUNC3(sk);
		this_sack--;
		tp->rx_opt.num_sacks--;
		sp--;
	}
	for (; this_sack > 0; this_sack--, sp--)
		*sp = *(sp - 1);

new_sack:
	/* Build the new head SACK, and we're done. */
	sp->start_seq = seq;
	sp->end_seq = end_seq;
	tp->rx_opt.num_sacks++;
}