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
typedef  scalar_t__ u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct batadv_unicast_packet {int dummy; } ;
struct batadv_tp_vars {scalar_t__ role; scalar_t__ last_recv; int /*<<< orphan*/  last_recv_time; } ;
struct batadv_priv {int dummy; } ;
struct batadv_icmp_tp_packet {scalar_t__ orig; int /*<<< orphan*/  uid; int /*<<< orphan*/  session; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
 scalar_t__ BATADV_TP_FIRST_SEQ ; 
 scalar_t__ BATADV_TP_RECEIVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_tp_vars*,struct sk_buff const*) ; 
 struct batadv_tp_vars* FUNC4 (struct batadv_priv*,struct batadv_icmp_tp_packet const*) ; 
 struct batadv_tp_vars* FUNC5 (struct batadv_priv*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC8 (struct batadv_tp_vars*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct batadv_priv *bat_priv,
			       const struct sk_buff *skb)
{
	const struct batadv_icmp_tp_packet *icmp;
	struct batadv_tp_vars *tp_vars;
	size_t packet_size;
	u32 seqno;

	icmp = (struct batadv_icmp_tp_packet *)skb->data;

	seqno = FUNC9(icmp->seqno);
	/* check if this is the first seqno. This means that if the
	 * first packet is lost, the tp meter does not work anymore!
	 */
	if (seqno == BATADV_TP_FIRST_SEQ) {
		tp_vars = FUNC4(bat_priv, icmp);
		if (!tp_vars) {
			FUNC0(BATADV_DBG_TP_METER, bat_priv,
				   "Meter: seqno != BATADV_TP_FIRST_SEQ cannot initiate connection\n");
			goto out;
		}
	} else {
		tp_vars = FUNC5(bat_priv, icmp->orig,
						      icmp->session);
		if (!tp_vars) {
			FUNC0(BATADV_DBG_TP_METER, bat_priv,
				   "Unexpected packet from %pM!\n",
				   icmp->orig);
			goto out;
		}
	}

	if (FUNC10(tp_vars->role != BATADV_TP_RECEIVER)) {
		FUNC0(BATADV_DBG_TP_METER, bat_priv,
			   "Meter: dropping packet: not expected (role=%u)\n",
			   tp_vars->role);
		goto out;
	}

	tp_vars->last_recv_time = jiffies;

	/* if the packet is a duplicate, it may be the case that an ACK has been
	 * lost. Resend the ACK
	 */
	if (FUNC1(seqno, tp_vars->last_recv))
		goto send_ack;

	/* if the packet is out of order enqueue it */
	if (FUNC9(icmp->seqno) != tp_vars->last_recv) {
		/* exit immediately (and do not send any ACK) if the packet has
		 * not been enqueued correctly
		 */
		if (!FUNC3(tp_vars, skb))
			goto out;

		/* send a duplicate ACK */
		goto send_ack;
	}

	/* if everything was fine count the ACKed bytes */
	packet_size = skb->len - sizeof(struct batadv_unicast_packet);
	tp_vars->last_recv += packet_size;

	/* check if this ordered message filled a gap.... */
	FUNC2(tp_vars);

send_ack:
	/* send the ACK. If the received packet was out of order, the ACK that
	 * is going to be sent is a duplicate (the sender will count them and
	 * possibly enter Fast Retransmit as soon as it has reached 3)
	 */
	FUNC6(bat_priv, icmp->orig, tp_vars->last_recv,
			   icmp->timestamp, icmp->session, icmp->uid);
out:
	if (FUNC8(tp_vars))
		FUNC7(tp_vars);
}