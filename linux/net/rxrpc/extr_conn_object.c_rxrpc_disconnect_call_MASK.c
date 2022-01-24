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
struct TYPE_5__ {TYPE_1__* peer; } ;
struct rxrpc_connection {int /*<<< orphan*/  idle_timestamp; int /*<<< orphan*/  channel_lock; TYPE_2__ params; } ;
struct rxrpc_call {struct rxrpc_connection* conn; int /*<<< orphan*/  error_link; int /*<<< orphan*/  cong_cwnd; TYPE_3__* peer; } ;
struct TYPE_6__ {int /*<<< orphan*/  cong_cwnd; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxrpc_connection*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 void FUNC2 (struct rxrpc_call*) ; 
 scalar_t__ FUNC3 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct rxrpc_call *call)
{
	struct rxrpc_connection *conn = call->conn;

	call->peer->cong_cwnd = call->cong_cwnd;

	FUNC6(&conn->params.peer->lock);
	FUNC1(&call->error_link);
	FUNC8(&conn->params.peer->lock);

	if (FUNC3(call))
		return FUNC2(call);

	FUNC5(&conn->channel_lock);
	FUNC0(conn, call);
	FUNC7(&conn->channel_lock);

	call->conn = NULL;
	conn->idle_timestamp = jiffies;
	FUNC4(conn);
}