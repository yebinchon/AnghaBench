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
struct rxrpc_peer {int /*<<< orphan*/  service_conn_lock; int /*<<< orphan*/  service_conns; } ;
struct TYPE_2__ {struct rxrpc_peer* peer; } ;
struct rxrpc_connection {int /*<<< orphan*/  service_node; int /*<<< orphan*/  flags; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CONN_IN_SERVICE_CONNS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rxrpc_connection *conn)
{
	struct rxrpc_peer *peer = conn->params.peer;

	FUNC2(&peer->service_conn_lock);
	if (FUNC1(RXRPC_CONN_IN_SERVICE_CONNS, &conn->flags))
		FUNC0(&conn->service_node, &peer->service_conns);
	FUNC3(&peer->service_conn_lock);
}