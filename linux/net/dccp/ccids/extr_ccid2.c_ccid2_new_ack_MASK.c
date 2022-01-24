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
struct sock {int dummy; } ;
struct dccp_sock {int dccps_l_ack_ratio; int dccps_l_seq_win; int dccps_r_seq_win; } ;
struct ccid2_seq {scalar_t__ ccid2s_sent; } ;
struct ccid2_hc_tx_sock {int tx_cwnd; int tx_ssthresh; int tx_packets_acked; } ;

/* Variables and functions */
 int CCID2_WIN_CHANGE_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 struct ccid2_hc_tx_sock* FUNC2 (struct sock*) ; 
 scalar_t__ ccid2_jiffies32 ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,scalar_t__) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, struct ccid2_seq *seqp,
			  unsigned int *maxincr)
{
	struct ccid2_hc_tx_sock *hc = FUNC2(sk);
	struct dccp_sock *dp = FUNC4(sk);
	int r_seq_used = hc->tx_cwnd / dp->dccps_l_ack_ratio;

	if (hc->tx_cwnd < dp->dccps_l_seq_win &&
	    r_seq_used < dp->dccps_r_seq_win) {
		if (hc->tx_cwnd < hc->tx_ssthresh) {
			if (*maxincr > 0 && ++hc->tx_packets_acked >= 2) {
				hc->tx_cwnd += 1;
				*maxincr    -= 1;
				hc->tx_packets_acked = 0;
			}
		} else if (++hc->tx_packets_acked >= hc->tx_cwnd) {
			hc->tx_cwnd += 1;
			hc->tx_packets_acked = 0;
		}
	}

	/*
	 * Adjust the local sequence window and the ack ratio to allow about
	 * 5 times the number of packets in the network (RFC 4340 7.5.2)
	 */
	if (r_seq_used * CCID2_WIN_CHANGE_FACTOR >= dp->dccps_r_seq_win)
		FUNC0(sk, dp->dccps_l_ack_ratio * 2);
	else if (r_seq_used * CCID2_WIN_CHANGE_FACTOR < dp->dccps_r_seq_win/2)
		FUNC0(sk, dp->dccps_l_ack_ratio / 2 ? : 1U);

	if (hc->tx_cwnd * CCID2_WIN_CHANGE_FACTOR >= dp->dccps_l_seq_win)
		FUNC1(sk, dp->dccps_l_seq_win * 2);
	else if (hc->tx_cwnd * CCID2_WIN_CHANGE_FACTOR < dp->dccps_l_seq_win/2)
		FUNC1(sk, dp->dccps_l_seq_win / 2);

	/*
	 * FIXME: RTT is sampled several times per acknowledgment (for each
	 * entry in the Ack Vector), instead of once per Ack (as in TCP SACK).
	 * This causes the RTT to be over-estimated, since the older entries
	 * in the Ack Vector have earlier sending times.
	 * The cleanest solution is to not use the ccid2s_sent field at all
	 * and instead use DCCP timestamps: requires changes in other places.
	 */
	FUNC3(sk, ccid2_jiffies32 - seqp->ccid2s_sent);
}