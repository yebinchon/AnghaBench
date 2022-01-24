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
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct dccp_sock {long dccps_syn_rtt; int dccps_hc_tx_insert_options; } ;
struct ccid3_hc_tx_sock {scalar_t__ tx_state; scalar_t__ tx_s; long tx_rtt; scalar_t__ tx_x; int /*<<< orphan*/  tx_t_ipi; void* tx_t_nom; scalar_t__ tx_last_win_count; void* tx_t_ld; void* tx_t_last_win_count; int /*<<< orphan*/  tx_no_feedback_timer; } ;
typedef  scalar_t__ s64 ;
typedef  void* ktime_t ;
struct TYPE_2__ {scalar_t__ dccpd_ccval; } ;

/* Variables and functions */
 int CCID_PACKET_SEND_AT_ONCE ; 
 long DCCP_FALLBACK_RTT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int EBADMSG ; 
 int /*<<< orphan*/  TFRC_INITIAL_TIMEOUT ; 
 int /*<<< orphan*/  TFRC_SSTATE_NO_FBACK ; 
 scalar_t__ TFRC_SSTATE_NO_SENT ; 
 scalar_t__ TFRC_T_DELTA ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 struct ccid3_hc_tx_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccid3_hc_tx_sock*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,long) ; 
 int /*<<< orphan*/  FUNC5 (struct ccid3_hc_tx_sock*) ; 
 struct dccp_sock* FUNC6 (struct sock*) ; 
 scalar_t__ jiffies ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC8 () ; 
 scalar_t__ FUNC9 (void*,void*) ; 
 scalar_t__ FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sock *sk, struct sk_buff *skb)
{
	struct dccp_sock *dp = FUNC6(sk);
	struct ccid3_hc_tx_sock *hc = FUNC2(sk);
	ktime_t now = FUNC8();
	s64 delay;

	/*
	 * This function is called only for Data and DataAck packets. Sending
	 * zero-sized Data(Ack)s is theoretically possible, but for congestion
	 * control this case is pathological - ignore it.
	 */
	if (FUNC12(skb->len == 0))
		return -EBADMSG;

	if (hc->tx_state == TFRC_SSTATE_NO_SENT) {
		FUNC11(sk, &hc->tx_no_feedback_timer, (jiffies +
			       FUNC13(TFRC_INITIAL_TIMEOUT)));
		hc->tx_last_win_count	= 0;
		hc->tx_t_last_win_count = now;

		/* Set t_0 for initial packet */
		hc->tx_t_nom = now;

		hc->tx_s = skb->len;

		/*
		 * Use initial RTT sample when available: recommended by erratum
		 * to RFC 4342. This implements the initialisation procedure of
		 * draft rfc3448bis, section 4.2. Remember, X is scaled by 2^6.
		 */
		if (dp->dccps_syn_rtt) {
			FUNC4("SYN RTT = %uus\n", dp->dccps_syn_rtt);
			hc->tx_rtt  = dp->dccps_syn_rtt;
			hc->tx_x    = FUNC10(sk);
			hc->tx_t_ld = now;
		} else {
			/*
			 * Sender does not have RTT sample:
			 * - set fallback RTT (RFC 4340, 3.4) since a RTT value
			 *   is needed in several parts (e.g.  window counter);
			 * - set sending rate X_pps = 1pps as per RFC 3448, 4.2.
			 */
			hc->tx_rtt = DCCP_FALLBACK_RTT;
			hc->tx_x   = hc->tx_s;
			hc->tx_x <<= 6;
		}
		FUNC5(hc);

		FUNC1(sk, TFRC_SSTATE_NO_FBACK);

	} else {
		delay = FUNC9(hc->tx_t_nom, now);
		FUNC4("delay=%ld\n", (long)delay);
		/*
		 *	Scheduling of packet transmissions (RFC 5348, 8.3)
		 *
		 * if (t_now > t_nom - delta)
		 *       // send the packet now
		 * else
		 *       // send the packet in (t_nom - t_now) milliseconds.
		 */
		if (delay >= TFRC_T_DELTA)
			return (u32)delay / USEC_PER_MSEC;

		FUNC3(hc, now);
	}

	/* prepare to send now (add options etc.) */
	dp->dccps_hc_tx_insert_options = 1;
	FUNC0(skb)->dccpd_ccval  = hc->tx_last_win_count;

	/* set the nominal send time for the next following packet */
	hc->tx_t_nom = FUNC7(hc->tx_t_nom, hc->tx_t_ipi);
	return CCID_PACKET_SEND_AT_ONCE;
}