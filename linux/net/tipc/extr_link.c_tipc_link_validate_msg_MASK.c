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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int peer_caps; int /*<<< orphan*/  rcv_nxt_state; int /*<<< orphan*/  in_session; int /*<<< orphan*/  peer_session; } ;

/* Variables and functions */
#define  ACTIVATE_MSG 130 
 scalar_t__ LINK_PROTOCOL ; 
#define  RESET_MSG 129 
#define  STATE_MSG 128 
 int TIPC_LINK_PROTO_SEQNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_link*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int FUNC6 (struct tipc_msg*) ; 
 scalar_t__ FUNC7 (struct tipc_msg*) ; 

bool FUNC8(struct tipc_link *l, struct tipc_msg *hdr)
{
	u16 curr_session = l->peer_session;
	u16 session = FUNC5(hdr);
	int mtyp = FUNC6(hdr);

	if (FUNC7(hdr) != LINK_PROTOCOL)
		return true;

	switch (mtyp) {
	case RESET_MSG:
		if (!l->in_session)
			return true;
		/* Accept only RESET with new session number */
		return FUNC2(session, curr_session);
	case ACTIVATE_MSG:
		if (!l->in_session)
			return true;
		/* Accept only ACTIVATE with new or current session number */
		return !FUNC0(session, curr_session);
	case STATE_MSG:
		/* Accept only STATE with current session number */
		if (!l->in_session)
			return false;
		if (session != curr_session)
			return false;
		/* Extra sanity check */
		if (!FUNC1(l) && FUNC3(hdr))
			return false;
		if (!(l->peer_caps & TIPC_LINK_PROTO_SEQNO))
			return true;
		/* Accept only STATE with new sequence number */
		return !FUNC0(FUNC4(hdr), l->rcv_nxt_state);
	default:
		return false;
	}
}