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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  probe_seq_start; } ;
struct tcp_sock {scalar_t__ retrans_out; int /*<<< orphan*/  snd_cwnd; TYPE_2__ mtu_probe; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  high_seq; scalar_t__ retrans_stamp; scalar_t__ prior_ssthresh; scalar_t__ sacked_out; int /*<<< orphan*/  packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  probe_size; } ;
struct inet_connection_sock {int icsk_ca_state; TYPE_1__ icsk_mtup; } ;

/* Variables and functions */
 int FLAG_DATA_SACKED ; 
 int FLAG_ECE ; 
 int FLAG_LOST_RETRANS ; 
 int FLAG_SND_UNA_ADVANCED ; 
 int REXMIT_LOST ; 
#define  TCP_CA_CWR 130 
 int TCP_CA_Disorder ; 
#define  TCP_CA_Loss 129 
 int TCP_CA_Open ; 
#define  TCP_CA_Recovery 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 scalar_t__ FUNC4 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 struct tcp_sock* FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC25(struct sock *sk, const u32 prior_snd_una,
				  int num_dupack, int *ack_flag, int *rexmit)
{
	struct inet_connection_sock *icsk = FUNC2(sk);
	struct tcp_sock *tp = FUNC16(sk);
	int fast_rexmit = 0, flag = *ack_flag;
	bool do_lost = num_dupack || ((flag & FLAG_DATA_SACKED) &&
				      FUNC7(sk));

	if (!tp->packets_out && tp->sacked_out)
		tp->sacked_out = 0;

	/* Now state machine starts.
	 * A. ECE, hence prohibit cwnd undoing, the reduction is required. */
	if (flag & FLAG_ECE)
		tp->prior_ssthresh = 0;

	/* B. In all the states check for reneging SACKs. */
	if (FUNC4(sk, flag))
		return;

	/* C. Check consistency of the current state. */
	FUNC24(tp);

	/* D. Check state exit conditions. State can be terminated
	 *    when high_seq is ACKed. */
	if (icsk->icsk_ca_state == TCP_CA_Open) {
		FUNC0(tp->retrans_out != 0);
		tp->retrans_stamp = 0;
	} else if (!FUNC1(tp->snd_una, tp->high_seq)) {
		switch (icsk->icsk_ca_state) {
		case TCP_CA_CWR:
			/* CWR is to be held something *above* high_seq
			 * is ACKed for CWR bit to reach receiver. */
			if (tp->snd_una != tp->high_seq) {
				FUNC5(sk);
				FUNC14(sk, TCP_CA_Open);
			}
			break;

		case TCP_CA_Recovery:
			if (FUNC10(tp))
				FUNC13(tp);
			if (FUNC22(sk))
				return;
			FUNC5(sk);
			break;
		}
	}

	/* E. Process state. */
	switch (icsk->icsk_ca_state) {
	case TCP_CA_Recovery:
		if (!(flag & FLAG_SND_UNA_ADVANCED)) {
			if (FUNC10(tp))
				FUNC3(sk, num_dupack);
		} else {
			if (FUNC21(sk, prior_snd_una))
				return;
			/* Partial ACK arrived. Force fast retransmit. */
			do_lost = FUNC10(tp) ||
				  FUNC7(sk);
		}
		if (FUNC20(sk)) {
			FUNC18(sk);
			return;
		}
		FUNC8(sk, ack_flag);
		break;
	case TCP_CA_Loss:
		FUNC12(sk, flag, num_dupack, rexmit);
		FUNC8(sk, ack_flag);
		if (!(icsk->icsk_ca_state == TCP_CA_Open ||
		      (*ack_flag & FLAG_LOST_RETRANS)))
			return;
		/* Change state if cwnd is undone or retransmits are lost */
		/* fall through */
	default:
		if (FUNC10(tp)) {
			if (flag & FLAG_SND_UNA_ADVANCED)
				FUNC13(tp);
			FUNC3(sk, num_dupack);
		}

		if (icsk->icsk_ca_state <= TCP_CA_Disorder)
			FUNC20(sk);

		FUNC8(sk, ack_flag);
		if (!FUNC17(sk, flag)) {
			FUNC19(sk, flag);
			return;
		}

		/* MTU probe failure: don't reduce cwnd */
		if (icsk->icsk_ca_state < TCP_CA_CWR &&
		    icsk->icsk_mtup.probe_size &&
		    tp->snd_una == tp->mtu_probe.probe_seq_start) {
			FUNC11(sk);
			/* Restores the reduction we did in tcp_mtup_probe() */
			tp->snd_cwnd++;
			FUNC15(sk);
			return;
		}

		/* Otherwise enter Recovery state */
		FUNC6(sk, (flag & FLAG_ECE));
		fast_rexmit = 1;
	}

	if (!FUNC9(sk) && do_lost)
		FUNC23(sk, fast_rexmit);
	*rexmit = REXMIT_LOST;
}