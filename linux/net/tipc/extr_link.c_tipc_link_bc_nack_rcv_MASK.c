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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_nacks; } ;
struct tipc_link {int /*<<< orphan*/  nack_state; int /*<<< orphan*/  rcv_nxt; TYPE_1__ stats; int /*<<< orphan*/  bc_sndlink; int /*<<< orphan*/  net; int /*<<< orphan*/  bc_peer_is_up; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_NACK_SND_SUPPRESS ; 
 int STATE_MSG ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_link*,scalar_t__,struct sk_buff_head*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct tipc_link*,scalar_t__,scalar_t__,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_link*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct tipc_link *l, struct sk_buff *skb,
			  struct sk_buff_head *xmitq)
{
	struct tipc_msg *hdr = FUNC0(skb);
	u32 dnode = FUNC6(hdr);
	int mtyp = FUNC7(hdr);
	u16 acked = FUNC4(hdr);
	u16 from = acked + 1;
	u16 to = FUNC5(hdr);
	u16 peers_snd_nxt = to + 1;
	int rc = 0;

	FUNC1(skb);

	if (!FUNC10(l) || !l->bc_peer_is_up)
		return 0;

	if (mtyp != STATE_MSG)
		return 0;

	if (dnode == FUNC11(l->net)) {
		FUNC8(l, acked, xmitq);
		rc = FUNC9(l->bc_sndlink, l, from, to, xmitq);
		l->stats.recv_nacks++;
		return rc;
	}

	/* Msg for other node => suppress own NACK at next sync if applicable */
	if (FUNC3(peers_snd_nxt, l->rcv_nxt) && !FUNC2(l->rcv_nxt, from))
		l->nack_state = BC_NACK_SND_SUPPRESS;

	return 0;
}