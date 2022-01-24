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
struct rxrpc_net {unsigned int nr_client_conns; int /*<<< orphan*/  waiting_client_conns; int /*<<< orphan*/  client_conn_cache_lock; } ;
struct rxrpc_connection {int cache_state; int /*<<< orphan*/  cache_link; int /*<<< orphan*/  flags; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  RXRPC_CONN_CLIENT_ACTIVE 133 
#define  RXRPC_CONN_CLIENT_CULLED 132 
#define  RXRPC_CONN_CLIENT_IDLE 131 
#define  RXRPC_CONN_CLIENT_INACTIVE 130 
#define  RXRPC_CONN_CLIENT_UPGRADE 129 
#define  RXRPC_CONN_CLIENT_WAITING 128 
 int /*<<< orphan*/  RXRPC_CONN_COUNTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_net*,struct rxrpc_connection*) ; 
 int /*<<< orphan*/  rxrpc_client_count ; 
 int /*<<< orphan*/  rxrpc_client_to_waiting ; 
 unsigned int rxrpc_max_client_connections ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_connection*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct rxrpc_net *rxnet,
				      struct rxrpc_connection *conn)
{
	unsigned int nr_conns;

	FUNC2("%d,%d", conn->debug_id, conn->cache_state);

	if (conn->cache_state == RXRPC_CONN_CLIENT_ACTIVE ||
	    conn->cache_state == RXRPC_CONN_CLIENT_UPGRADE)
		goto out;

	FUNC6(&rxnet->client_conn_cache_lock);

	nr_conns = rxnet->nr_client_conns;
	if (!FUNC8(RXRPC_CONN_COUNTED, &conn->flags)) {
		FUNC9(conn, -1, rxrpc_client_count);
		rxnet->nr_client_conns = nr_conns + 1;
	}

	switch (conn->cache_state) {
	case RXRPC_CONN_CLIENT_ACTIVE:
	case RXRPC_CONN_CLIENT_UPGRADE:
	case RXRPC_CONN_CLIENT_WAITING:
		break;

	case RXRPC_CONN_CLIENT_INACTIVE:
	case RXRPC_CONN_CLIENT_CULLED:
	case RXRPC_CONN_CLIENT_IDLE:
		if (nr_conns >= rxrpc_max_client_connections)
			goto wait_for_capacity;
		goto activate_conn;

	default:
		FUNC0();
	}

out_unlock:
	FUNC7(&rxnet->client_conn_cache_lock);
out:
	FUNC3(" [%d]", conn->cache_state);
	return;

activate_conn:
	FUNC1("activate");
	FUNC5(rxnet, conn);
	goto out_unlock;

wait_for_capacity:
	FUNC1("wait");
	FUNC9(conn, -1, rxrpc_client_to_waiting);
	conn->cache_state = RXRPC_CONN_CLIENT_WAITING;
	FUNC4(&conn->cache_link, &rxnet->waiting_client_conns);
	goto out_unlock;
}