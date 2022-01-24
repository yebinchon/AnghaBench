#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_sock {int /*<<< orphan*/  high_seq; int /*<<< orphan*/  snd_nxt; scalar_t__ frto; int /*<<< orphan*/  fastopen_rsk; int /*<<< orphan*/  snd_una; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FLAG_DATA_SACKED ; 
 int FLAG_ORIG_SACK_ACKED ; 
 int FLAG_SND_UNA_ADVANCED ; 
 int REXMIT_LOST ; 
 int REXMIT_NEW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 scalar_t__ FUNC4 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct sock *sk, int flag, int num_dupack,
			     int *rexmit)
{
	struct tcp_sock *tp = FUNC6(sk);
	bool recovered = !FUNC1(tp->snd_una, tp->high_seq);

	if ((flag & FLAG_SND_UNA_ADVANCED || FUNC2(tp->fastopen_rsk)) &&
	    FUNC7(sk, false))
		return;

	if (tp->frto) { /* F-RTO RFC5682 sec 3.1 (sack enhanced version). */
		/* Step 3.b. A timeout is spurious if not all data are
		 * lost, i.e., never-retransmitted data are (s)acked.
		 */
		if ((flag & FLAG_ORIG_SACK_ACKED) &&
		    FUNC7(sk, true))
			return;

		if (FUNC0(tp->snd_nxt, tp->high_seq)) {
			if (flag & FLAG_DATA_SACKED || num_dupack)
				tp->frto = 0; /* Step 3.a. loss was real */
		} else if (flag & FLAG_SND_UNA_ADVANCED && !recovered) {
			tp->high_seq = tp->snd_nxt;
			/* Step 2.b. Try send new data (but deferred until cwnd
			 * is updated in tcp_ack()). Otherwise fall back to
			 * the conventional recovery.
			 */
			if (!FUNC10(sk) &&
			    FUNC0(FUNC9(tp), tp->snd_nxt)) {
				*rexmit = REXMIT_NEW;
				return;
			}
			tp->frto = 0;
		}
	}

	if (recovered) {
		/* F-RTO RFC5682 sec 3.1 step 2.a and 1st part of step 3.a */
		FUNC8(sk);
		return;
	}
	if (FUNC4(tp)) {
		/* A Reno DUPACK means new data in F-RTO step 2.b above are
		 * delivered. Lower inflight to clock out (re)tranmissions.
		 */
		if (FUNC0(tp->snd_nxt, tp->high_seq) && num_dupack)
			FUNC3(sk, num_dupack);
		else if (flag & FLAG_SND_UNA_ADVANCED)
			FUNC5(tp);
	}
	*rexmit = REXMIT_LOST;
}