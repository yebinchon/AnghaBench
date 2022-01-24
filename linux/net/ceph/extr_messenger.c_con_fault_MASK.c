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
struct ceph_connection {scalar_t__ state; int delay; int /*<<< orphan*/  out_queue; int /*<<< orphan*/  out_sent; TYPE_1__* in_msg; int /*<<< orphan*/ * error_msg; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  peer_name; } ;
struct TYPE_2__ {struct ceph_connection* con; } ;

/* Variables and functions */
 int BASE_DELAY_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CON_FLAG_BACKOFF ; 
 int /*<<< orphan*/  CON_FLAG_KEEPALIVE_PENDING ; 
 int /*<<< orphan*/  CON_FLAG_LOSSYTX ; 
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 scalar_t__ CON_STATE_CLOSED ; 
 scalar_t__ CON_STATE_CONNECTING ; 
 scalar_t__ CON_STATE_NEGOTIATING ; 
 scalar_t__ CON_STATE_OPEN ; 
 scalar_t__ CON_STATE_PREOPEN ; 
 scalar_t__ CON_STATE_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_DELAY_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ceph_connection*) ; 

__attribute__((used)) static void FUNC14(struct ceph_connection *con)
{
	FUNC9("fault %p state %lu to peer %s\n",
	     con, con->state, FUNC4(&con->peer_addr));

	FUNC12("%s%lld %s %s\n", FUNC1(con->peer_name),
		FUNC4(&con->peer_addr), con->error_msg);
	con->error_msg = NULL;

	FUNC2(con->state != CON_STATE_CONNECTING &&
	       con->state != CON_STATE_NEGOTIATING &&
	       con->state != CON_STATE_OPEN);

	FUNC5(con);

	if (FUNC8(con, CON_FLAG_LOSSYTX)) {
		FUNC9("fault on LOSSYTX channel, marking CLOSED\n");
		con->state = CON_STATE_CLOSED;
		return;
	}

	if (con->in_msg) {
		FUNC0(con->in_msg->con != con);
		FUNC3(con->in_msg);
		con->in_msg = NULL;
	}

	/* Requeue anything that hasn't been acked */
	FUNC11(&con->out_sent, &con->out_queue);

	/* If there are no messages queued or keepalive pending, place
	 * the connection in a STANDBY state */
	if (FUNC10(&con->out_queue) &&
	    !FUNC8(con, CON_FLAG_KEEPALIVE_PENDING)) {
		FUNC9("fault %p setting STANDBY clearing WRITE_PENDING\n", con);
		FUNC6(con, CON_FLAG_WRITE_PENDING);
		con->state = CON_STATE_STANDBY;
	} else {
		/* retry after a delay. */
		con->state = CON_STATE_PREOPEN;
		if (con->delay == 0)
			con->delay = BASE_DELAY_INTERVAL;
		else if (con->delay < MAX_DELAY_INTERVAL)
			con->delay *= 2;
		FUNC7(con, CON_FLAG_BACKOFF);
		FUNC13(con);
	}
}