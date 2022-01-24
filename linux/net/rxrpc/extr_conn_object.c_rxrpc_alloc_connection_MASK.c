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
struct rxrpc_connection {int size_align; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  idle_timestamp; int /*<<< orphan*/  state_lock; int /*<<< orphan*/ * security; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  link; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  processor; int /*<<< orphan*/  timer; int /*<<< orphan*/  waiting_calls; int /*<<< orphan*/  channel_lock; int /*<<< orphan*/  cache_link; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rxrpc_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct rxrpc_connection* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_connection_timer ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  rxrpc_no_security ; 
 int /*<<< orphan*/  rxrpc_process_connection ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct rxrpc_connection *FUNC9(gfp_t gfp)
{
	struct rxrpc_connection *conn;

	FUNC2("");

	conn = FUNC5(sizeof(struct rxrpc_connection), gfp);
	if (conn) {
		FUNC0(&conn->cache_link);
		FUNC7(&conn->channel_lock);
		FUNC0(&conn->waiting_calls);
		FUNC8(&conn->timer, &rxrpc_connection_timer, 0);
		FUNC1(&conn->processor, &rxrpc_process_connection);
		FUNC0(&conn->proc_link);
		FUNC0(&conn->link);
		FUNC6(&conn->rx_queue);
		conn->security = &rxrpc_no_security;
		FUNC7(&conn->state_lock);
		conn->debug_id = FUNC4(&rxrpc_debug_id);
		conn->size_align = 4;
		conn->idle_timestamp = jiffies;
	}

	FUNC3(" = %p{%d}", conn, conn ? conn->debug_id : 0);
	return conn;
}