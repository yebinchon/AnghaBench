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
struct ceph_connection {int /*<<< orphan*/  mutex; scalar_t__ peer_global_seq; int /*<<< orphan*/  state; int /*<<< orphan*/  peer_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_FLAG_BACKOFF ; 
 int /*<<< orphan*/  CON_FLAG_KEEPALIVE_PENDING ; 
 int /*<<< orphan*/  CON_FLAG_LOSSYTX ; 
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 int /*<<< orphan*/  CON_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_connection*) ; 

void FUNC8(struct ceph_connection *con)
{
	FUNC5(&con->mutex);
	FUNC4("con_close %p peer %s\n", con, FUNC1(&con->peer_addr));
	con->state = CON_STATE_CLOSED;

	FUNC3(con, CON_FLAG_LOSSYTX);	/* so we retry next connect */
	FUNC3(con, CON_FLAG_KEEPALIVE_PENDING);
	FUNC3(con, CON_FLAG_WRITE_PENDING);
	FUNC3(con, CON_FLAG_BACKOFF);

	FUNC7(con);
	con->peer_global_seq = 0;
	FUNC0(con);
	FUNC2(con);
	FUNC6(&con->mutex);
}