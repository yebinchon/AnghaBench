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
typedef  int u8 ;
typedef  void* u64 ;
typedef  void* u32 ;
struct tcp_sock {scalar_t__ undo_retrans; int lost_out; int retrans_out; int sacked_out; int delivered; int lost_cnt_hint; scalar_t__ lost_skb_hint; scalar_t__ high_seq; scalar_t__ snd_una; scalar_t__ undo_marker; } ;
struct tcp_sacktag_state {scalar_t__ first_sackt; int /*<<< orphan*/  flag; void* last_sackt; void* reord; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {void* seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_DATA_SACKED ; 
 int /*<<< orphan*/  FLAG_ORIG_SACK_ACKED ; 
 int TCPCB_LOST ; 
 int TCPCB_RETRANS ; 
 int TCPCB_SACKED_ACKED ; 
 int TCPCB_SACKED_RETRANS ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (void*,scalar_t__) ; 
 scalar_t__ FUNC2 (void*,void*) ; 
 void* FUNC3 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,int,void*,void*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static u8 FUNC6(struct sock *sk,
			  struct tcp_sacktag_state *state, u8 sacked,
			  u32 start_seq, u32 end_seq,
			  int dup_sack, int pcount,
			  u64 xmit_time)
{
	struct tcp_sock *tp = FUNC5(sk);

	/* Account D-SACK for retransmitted packet. */
	if (dup_sack && (sacked & TCPCB_RETRANS)) {
		if (tp->undo_marker && tp->undo_retrans > 0 &&
		    FUNC1(end_seq, tp->undo_marker))
			tp->undo_retrans--;
		if ((sacked & TCPCB_SACKED_ACKED) &&
		    FUNC2(start_seq, state->reord))
				state->reord = start_seq;
	}

	/* Nothing to do; acked frame is about to be dropped (was ACKed). */
	if (!FUNC1(end_seq, tp->snd_una))
		return sacked;

	if (!(sacked & TCPCB_SACKED_ACKED)) {
		FUNC4(tp, sacked, end_seq, xmit_time);

		if (sacked & TCPCB_SACKED_RETRANS) {
			/* If the segment is not tagged as lost,
			 * we do not clear RETRANS, believing
			 * that retransmission is still in flight.
			 */
			if (sacked & TCPCB_LOST) {
				sacked &= ~(TCPCB_LOST|TCPCB_SACKED_RETRANS);
				tp->lost_out -= pcount;
				tp->retrans_out -= pcount;
			}
		} else {
			if (!(sacked & TCPCB_RETRANS)) {
				/* New sack for not retransmitted frame,
				 * which was in hole. It is reordering.
				 */
				if (FUNC2(start_seq,
					   FUNC3(tp)) &&
				    FUNC2(start_seq, state->reord))
					state->reord = start_seq;

				if (!FUNC1(end_seq, tp->high_seq))
					state->flag |= FLAG_ORIG_SACK_ACKED;
				if (state->first_sackt == 0)
					state->first_sackt = xmit_time;
				state->last_sackt = xmit_time;
			}

			if (sacked & TCPCB_LOST) {
				sacked &= ~TCPCB_LOST;
				tp->lost_out -= pcount;
			}
		}

		sacked |= TCPCB_SACKED_ACKED;
		state->flag |= FLAG_DATA_SACKED;
		tp->sacked_out += pcount;
		tp->delivered += pcount;  /* Out-of-order packets delivered */

		/* Lost marker hint past SACKed? Tweak RFC3517 cnt */
		if (tp->lost_skb_hint &&
		    FUNC2(start_seq, FUNC0(tp->lost_skb_hint)->seq))
			tp->lost_cnt_hint += pcount;
	}

	/* D-SACK. We can detect redundant retransmission in S|R and plain R
	 * frames and clear it. undo_retrans is decreased above, L|R frames
	 * are accounted above as well.
	 */
	if (dup_sack && (sacked & TCPCB_SACKED_RETRANS)) {
		sacked &= ~TCPCB_SACKED_RETRANS;
		tp->retrans_out -= pcount;
	}

	return sacked;
}