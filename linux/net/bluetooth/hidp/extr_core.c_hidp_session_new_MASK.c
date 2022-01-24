#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/  file; int /*<<< orphan*/  sk; } ;
struct l2cap_conn {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; } ;
struct hidp_session {int flags; int /*<<< orphan*/  conn; struct socket* ctrl_sock; struct socket* intr_sock; int /*<<< orphan*/  report_queue; int /*<<< orphan*/  report_mutex; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev_init; int /*<<< orphan*/  idle_to; void* intr_mtu; void* ctrl_mtu; int /*<<< orphan*/  intr_transmit; int /*<<< orphan*/  ctrl_transmit; TYPE_1__ user; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  state_queue; int /*<<< orphan*/  state; int /*<<< orphan*/  ref; } ;
struct hidp_connadd_req {int flags; int /*<<< orphan*/  idle_to; } ;
struct bt_sock {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  imtu; int /*<<< orphan*/  omtu; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIDP_BLUETOOTH_VENDOR_ID ; 
 int /*<<< orphan*/  HIDP_SESSION_IDLING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 struct bt_sock* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hidp_idle_timeout ; 
 int FUNC7 (struct hidp_session*,struct hidp_connadd_req const*) ; 
 int /*<<< orphan*/  hidp_session_dev_work ; 
 int /*<<< orphan*/  hidp_session_probe ; 
 int /*<<< orphan*/  hidp_session_remove ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct hidp_session* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (struct bt_sock*) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint ; 

__attribute__((used)) static int FUNC19(struct hidp_session **out, const bdaddr_t *bdaddr,
			    struct socket *ctrl_sock,
			    struct socket *intr_sock,
			    const struct hidp_connadd_req *req,
			    struct l2cap_conn *conn)
{
	struct hidp_session *session;
	int ret;
	struct bt_sock *ctrl, *intr;

	ctrl = FUNC5(ctrl_sock->sk);
	intr = FUNC5(intr_sock->sk);

	session = FUNC11(sizeof(*session), GFP_KERNEL);
	if (!session)
		return -ENOMEM;

	/* object and runtime management */
	FUNC10(&session->ref);
	FUNC3(&session->state, HIDP_SESSION_IDLING);
	FUNC8(&session->state_queue);
	session->flags = req->flags & FUNC0(HIDP_BLUETOOTH_VENDOR_ID);

	/* connection management */
	FUNC4(&session->bdaddr, bdaddr);
	session->conn = FUNC12(conn);
	session->user.probe = hidp_session_probe;
	session->user.remove = hidp_session_remove;
	FUNC1(&session->user.list);
	session->ctrl_sock = ctrl_sock;
	session->intr_sock = intr_sock;
	FUNC17(&session->ctrl_transmit);
	FUNC17(&session->intr_transmit);
	session->ctrl_mtu = FUNC15(uint, FUNC14(ctrl)->chan->omtu,
					FUNC14(ctrl)->chan->imtu);
	session->intr_mtu = FUNC15(uint, FUNC14(intr)->chan->omtu,
					FUNC14(intr)->chan->imtu);
	session->idle_to = req->idle_to;

	/* device management */
	FUNC2(&session->dev_init, hidp_session_dev_work);
	FUNC18(&session->timer, hidp_idle_timeout, 0);

	/* session data */
	FUNC16(&session->report_mutex);
	FUNC8(&session->report_queue);

	ret = FUNC7(session, req);
	if (ret)
		goto err_free;

	FUNC6(session->intr_sock->file);
	FUNC6(session->ctrl_sock->file);
	*out = session;
	return 0;

err_free:
	FUNC13(session->conn);
	FUNC9(session);
	return ret;
}