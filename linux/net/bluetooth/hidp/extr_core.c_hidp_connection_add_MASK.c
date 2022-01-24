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
struct socket {int /*<<< orphan*/  sk; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  dst; scalar_t__ conn; } ;
struct hidp_session {int /*<<< orphan*/  user; } ;
struct hidp_connadd_req {int flags; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EBADFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  HIDP_BOOT_PROTOCOL_MODE ; 
 int /*<<< orphan*/  HIDP_VIRTUAL_CABLE_UNPLUG ; 
 int FUNC1 (struct hidp_session**,int /*<<< orphan*/ *,struct socket*,struct socket*,struct hidp_connadd_req const*,struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*) ; 
 int FUNC3 (struct socket*,struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 struct l2cap_conn* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct l2cap_conn*,int /*<<< orphan*/ *) ; 

int FUNC10(const struct hidp_connadd_req *req,
			struct socket *ctrl_sock,
			struct socket *intr_sock)
{
	u32 valid_flags = FUNC0(HIDP_VIRTUAL_CABLE_UNPLUG) |
			  FUNC0(HIDP_BOOT_PROTOCOL_MODE);
	struct hidp_session *session;
	struct l2cap_conn *conn;
	struct l2cap_chan *chan;
	int ret;

	ret = FUNC3(ctrl_sock, intr_sock);
	if (ret)
		return ret;

	if (req->flags & ~valid_flags)
		return -EINVAL;

	chan = FUNC8(ctrl_sock->sk)->chan;
	conn = NULL;
	FUNC4(chan);
	if (chan->conn)
		conn = FUNC6(chan->conn);
	FUNC5(chan);

	if (!conn)
		return -EBADFD;

	ret = FUNC1(&session, &chan->dst, ctrl_sock,
			       intr_sock, req, conn);
	if (ret)
		goto out_conn;

	ret = FUNC9(conn, &session->user);
	if (ret)
		goto out_session;

	ret = 0;

out_session:
	FUNC2(session);
out_conn:
	FUNC7(conn);
	return ret;
}