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
typedef  size_t u32 ;
struct sk_buff {scalar_t__ data; } ;
struct batadv_unicast_packet {int dummy; } ;
struct batadv_tp_vars {size_t recover; int fast_recovery; size_t last_sent; int ss_threshold; int cwnd; int /*<<< orphan*/  more_bytes; int /*<<< orphan*/  last_acked; TYPE_1__* net_dev; int /*<<< orphan*/  dup_acks; int /*<<< orphan*/  tot_sent; int /*<<< orphan*/  cwnd_lock; scalar_t__ dec_cwnd; int /*<<< orphan*/  sending; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {size_t recover; int fast_recovery; size_t last_sent; int ss_threshold; int cwnd; int /*<<< orphan*/  more_bytes; int /*<<< orphan*/  last_acked; TYPE_1__* net_dev; int /*<<< orphan*/  dup_acks; int /*<<< orphan*/  tot_sent; int /*<<< orphan*/  cwnd_lock; scalar_t__ dec_cwnd; int /*<<< orphan*/  sending; } ;
struct batadv_icmp_tp_packet {int /*<<< orphan*/  uid; int /*<<< orphan*/  session; scalar_t__ seqno; scalar_t__ timestamp; int /*<<< orphan*/  orig; } ;
struct batadv_hard_iface {size_t recover; int fast_recovery; size_t last_sent; int ss_threshold; int cwnd; int /*<<< orphan*/  more_bytes; int /*<<< orphan*/  last_acked; TYPE_1__* net_dev; int /*<<< orphan*/  dup_acks; int /*<<< orphan*/  tot_sent; int /*<<< orphan*/  cwnd_lock; scalar_t__ dec_cwnd; int /*<<< orphan*/  sending; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
 size_t BATADV_TP_PLEN ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_tp_vars*) ; 
 struct batadv_tp_vars* FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_tp_vars*) ; 
 struct batadv_tp_vars* FUNC8 (struct batadv_priv*) ; 
 scalar_t__ FUNC9 (size_t,size_t) ; 
 void* FUNC10 (int,size_t,size_t) ; 
 struct batadv_tp_vars* FUNC11 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC13 (struct batadv_tp_vars*,unsigned char*,struct batadv_tp_vars*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct batadv_tp_vars*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct batadv_tp_vars*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  jiffies ; 
 size_t FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct batadv_tp_vars*) ; 
 size_t FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct batadv_priv *bat_priv,
			       const struct sk_buff *skb)
{
	struct batadv_hard_iface *primary_if = NULL;
	struct batadv_orig_node *orig_node = NULL;
	const struct batadv_icmp_tp_packet *icmp;
	struct batadv_tp_vars *tp_vars;
	size_t packet_len, mss;
	u32 rtt, recv_ack, cwnd;
	unsigned char *dev_addr;

	packet_len = BATADV_TP_PLEN;
	mss = BATADV_TP_PLEN;
	packet_len += sizeof(struct batadv_unicast_packet);

	icmp = (struct batadv_icmp_tp_packet *)skb->data;

	/* find the tp_vars */
	tp_vars = FUNC11(bat_priv, icmp->orig,
					      icmp->session);
	if (FUNC22(!tp_vars))
		return;

	if (FUNC22(FUNC2(&tp_vars->sending) == 0))
		goto out;

	/* old ACK? silently drop it.. */
	if (FUNC9(FUNC19(icmp->seqno),
			      (u32)FUNC2(&tp_vars->last_acked)))
		goto out;

	primary_if = FUNC8(bat_priv);
	if (FUNC22(!primary_if))
		goto out;

	orig_node = FUNC6(bat_priv, icmp->orig);
	if (FUNC22(!orig_node))
		goto out;

	/* update RTO with the new sampled RTT, if any */
	rtt = FUNC17(jiffies) - FUNC19(icmp->timestamp);
	if (icmp->timestamp && rtt)
		FUNC15(tp_vars, rtt);

	/* ACK for new data... reset the timer */
	FUNC12(tp_vars);

	recv_ack = FUNC19(icmp->seqno);

	/* check if this ACK is a duplicate */
	if (FUNC2(&tp_vars->last_acked) == recv_ack) {
		FUNC1(&tp_vars->dup_acks);
		if (FUNC2(&tp_vars->dup_acks) != 3)
			goto out;

		if (recv_ack >= tp_vars->recover)
			goto out;

		/* if this is the third duplicate ACK do Fast Retransmit */
		FUNC13(tp_vars, primary_if->net_dev->dev_addr,
				   orig_node, recv_ack, packet_len,
				   icmp->session, icmp->uid,
				   FUNC17(jiffies));

		FUNC20(&tp_vars->cwnd_lock);

		/* Fast Recovery */
		tp_vars->fast_recovery = true;
		/* Set recover to the last outstanding seqno when Fast Recovery
		 * is entered. RFC6582, Section 3.2, step 1
		 */
		tp_vars->recover = tp_vars->last_sent;
		tp_vars->ss_threshold = tp_vars->cwnd >> 1;
		FUNC4(BATADV_DBG_TP_METER, bat_priv,
			   "Meter: Fast Recovery, (cur cwnd=%u) ss_thr=%u last_sent=%u recv_ack=%u\n",
			   tp_vars->cwnd, tp_vars->ss_threshold,
			   tp_vars->last_sent, recv_ack);
		tp_vars->cwnd = FUNC10(tp_vars->ss_threshold, 3 * mss,
					       mss);
		tp_vars->dec_cwnd = 0;
		tp_vars->last_sent = recv_ack;

		FUNC21(&tp_vars->cwnd_lock);
	} else {
		/* count the acked data */
		FUNC0(recv_ack - FUNC2(&tp_vars->last_acked),
			     &tp_vars->tot_sent);
		/* reset the duplicate ACKs counter */
		FUNC3(&tp_vars->dup_acks, 0);

		if (tp_vars->fast_recovery) {
			/* partial ACK */
			if (FUNC9(recv_ack, tp_vars->recover)) {
				/* this is another hole in the window. React
				 * immediately as specified by NewReno (see
				 * Section 3.2 of RFC6582 for details)
				 */
				dev_addr = primary_if->net_dev->dev_addr;
				FUNC13(tp_vars, dev_addr,
						   orig_node, recv_ack,
						   packet_len, icmp->session,
						   icmp->uid,
						   FUNC17(jiffies));
				tp_vars->cwnd = FUNC10(tp_vars->cwnd,
							       mss, mss);
			} else {
				tp_vars->fast_recovery = false;
				/* set cwnd to the value of ss_threshold at the
				 * moment that Fast Recovery was entered.
				 * RFC6582, Section 3.2, step 3
				 */
				cwnd = FUNC10(tp_vars->ss_threshold, 0,
						      mss);
				tp_vars->cwnd = cwnd;
			}
			goto move_twnd;
		}

		if (recv_ack - FUNC2(&tp_vars->last_acked) >= mss)
			FUNC14(tp_vars, mss);
move_twnd:
		/* move the Transmit Window */
		FUNC3(&tp_vars->last_acked, recv_ack);
	}

	FUNC23(&tp_vars->more_bytes);
out:
	if (FUNC18(primary_if))
		FUNC5(primary_if);
	if (FUNC18(orig_node))
		FUNC7(orig_node);
	if (FUNC18(tp_vars))
		FUNC16(tp_vars);
}