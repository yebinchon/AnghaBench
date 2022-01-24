#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data_len; int /*<<< orphan*/  middle_len; int /*<<< orphan*/  front_len; int /*<<< orphan*/  type; int /*<<< orphan*/  src; } ;
struct TYPE_7__ {scalar_t__ iov_len; } ;
struct ceph_msg {int needs_out_seq; TYPE_4__ hdr; int /*<<< orphan*/  list_head; TYPE_3__ front; } ;
struct ceph_connection {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  peer_name; int /*<<< orphan*/  out_queue; TYPE_2__* msgr; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 scalar_t__ CON_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_connection*) ; 
 scalar_t__ FUNC5 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_msg*,struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ceph_connection*) ; 

void FUNC15(struct ceph_connection *con, struct ceph_msg *msg)
{
	/* set src+dst */
	msg->hdr.src = con->msgr->inst.name;
	FUNC0(msg->front.iov_len != FUNC8(msg->hdr.front_len));
	msg->needs_out_seq = true;

	FUNC12(&con->mutex);

	if (con->state == CON_STATE_CLOSED) {
		FUNC6("con_send %p closed, dropping %p\n", con, msg);
		FUNC2(msg);
		FUNC13(&con->mutex);
		return;
	}

	FUNC11(msg, con);

	FUNC0(!FUNC10(&msg->list_head));
	FUNC9(&msg->list_head, &con->out_queue);
	FUNC6("----- %p to %s%lld %d=%s len %d+%d+%d -----\n", msg,
	     FUNC1(con->peer_name), FUNC7(msg->hdr.type),
	     FUNC3(FUNC7(msg->hdr.type)),
	     FUNC8(msg->hdr.front_len),
	     FUNC8(msg->hdr.middle_len),
	     FUNC8(msg->hdr.data_len));

	FUNC4(con);
	FUNC13(&con->mutex);

	/* if there wasn't anything waiting to send before, queue
	 * new work */
	if (FUNC5(con, CON_FLAG_WRITE_PENDING) == 0)
		FUNC14(con);
}