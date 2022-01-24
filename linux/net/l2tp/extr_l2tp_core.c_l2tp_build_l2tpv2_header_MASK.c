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
typedef  int u32 ;
typedef  int u16 ;
struct l2tp_tunnel {int peer_tunnel_id; } ;
struct l2tp_session {int peer_session_id; int ns; int /*<<< orphan*/  name; scalar_t__ send_seq; struct l2tp_tunnel* tunnel; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int L2TP_HDRFLAG_S ; 
 int L2TP_HDR_VER_2 ; 
 int /*<<< orphan*/  L2TP_MSG_SEQ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_session*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct l2tp_session *session, void *buf)
{
	struct l2tp_tunnel *tunnel = session->tunnel;
	__be16 *bufp = buf;
	__be16 *optr = buf;
	u16 flags = L2TP_HDR_VER_2;
	u32 tunnel_id = tunnel->peer_tunnel_id;
	u32 session_id = session->peer_session_id;

	if (session->send_seq)
		flags |= L2TP_HDRFLAG_S;

	/* Setup L2TP header. */
	*bufp++ = FUNC0(flags);
	*bufp++ = FUNC0(tunnel_id);
	*bufp++ = FUNC0(session_id);
	if (session->send_seq) {
		*bufp++ = FUNC0(session->ns);
		*bufp++ = 0;
		session->ns++;
		session->ns &= 0xffff;
		FUNC1(session, L2TP_MSG_SEQ, "%s: updated ns to %u\n",
			 session->name, session->ns);
	}

	return bufp - optr;
}