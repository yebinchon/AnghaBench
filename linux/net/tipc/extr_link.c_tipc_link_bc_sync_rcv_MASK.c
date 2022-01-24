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
typedef  scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_nacks; } ;
struct tipc_link {int bc_peer_is_up; scalar_t__ rcv_nxt; scalar_t__ window; int peer_caps; scalar_t__ nack_state; scalar_t__ snd_nxt; TYPE_1__ stats; struct tipc_link* bc_sndlink; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ BC_NACK_SND_CONDITIONAL ; 
 scalar_t__ BC_NACK_SND_SUPPRESS ; 
 void* BC_NACK_SND_UNCONDITIONAL ; 
 int TIPC_BCAST_STATE_NACK ; 
 int TIPC_LINK_SND_STATE ; 
 scalar_t__ TIPC_MIN_LINK_WIN ; 
 scalar_t__ FUNC0 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_link*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 int FUNC8 (struct tipc_link*,struct tipc_link*,scalar_t__,scalar_t__,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_link*,int,scalar_t__,struct sk_buff_head*) ; 

int FUNC10(struct tipc_link *l, struct tipc_msg *hdr,
			  struct sk_buff_head *xmitq)
{
	struct tipc_link *snd_l = l->bc_sndlink;
	u16 peers_snd_nxt = FUNC5(hdr);
	u16 from = FUNC6(hdr) + 1;
	u16 to = from + FUNC4(hdr) - 1;
	int rc = 0;

	if (!FUNC1(l))
		return rc;

	if (!FUNC7(hdr))
		return rc;

	/* Open when peer ackowledges our bcast init msg (pkt #1) */
	if (FUNC3(hdr))
		l->bc_peer_is_up = true;

	if (!l->bc_peer_is_up)
		return rc;

	l->stats.recv_nacks++;

	/* Ignore if peers_snd_nxt goes beyond receive window */
	if (FUNC2(peers_snd_nxt, l->rcv_nxt + l->window))
		return rc;

	rc = FUNC8(snd_l, l, from, to, xmitq);

	l->snd_nxt = peers_snd_nxt;
	if (FUNC0(l))
		rc |= TIPC_LINK_SND_STATE;

	/* Return now if sender supports nack via STATE messages */
	if (l->peer_caps & TIPC_BCAST_STATE_NACK)
		return rc;

	/* Otherwise, be backwards compatible */

	if (!FUNC2(peers_snd_nxt, l->rcv_nxt)) {
		l->nack_state = BC_NACK_SND_CONDITIONAL;
		return 0;
	}

	/* Don't NACK if one was recently sent or peeked */
	if (l->nack_state == BC_NACK_SND_SUPPRESS) {
		l->nack_state = BC_NACK_SND_UNCONDITIONAL;
		return 0;
	}

	/* Conditionally delay NACK sending until next synch rcv */
	if (l->nack_state == BC_NACK_SND_CONDITIONAL) {
		l->nack_state = BC_NACK_SND_UNCONDITIONAL;
		if ((peers_snd_nxt - l->rcv_nxt) < TIPC_MIN_LINK_WIN)
			return 0;
	}

	/* Send NACK now but suppress next one */
	FUNC9(l, true, peers_snd_nxt, xmitq);
	l->nack_state = BC_NACK_SND_SUPPRESS;
	return 0;
}