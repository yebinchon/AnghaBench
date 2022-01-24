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
struct rxrpc_net {int /*<<< orphan*/  conn_lock; } ;
struct TYPE_5__ {TYPE_1__* local; } ;
struct rxrpc_connection {int /*<<< orphan*/  rcu; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  cache_link; TYPE_3__* channels; TYPE_2__ params; } ;
struct TYPE_6__ {int /*<<< orphan*/  call; } ;
struct TYPE_4__ {struct rxrpc_net* rxnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_destroy_connection ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct rxrpc_connection *conn)
{
	struct rxrpc_net *rxnet = conn->params.local->rxnet;

	FUNC0(!FUNC4(conn->channels[0].call) &&
	       !FUNC4(conn->channels[1].call) &&
	       !FUNC4(conn->channels[2].call) &&
	       !FUNC4(conn->channels[3].call));
	FUNC0(FUNC3(&conn->cache_link));

	FUNC6(&rxnet->conn_lock);
	FUNC2(&conn->proc_link);
	FUNC7(&rxnet->conn_lock);

	/* Drain the Rx queue.  Note that even though we've unpublished, an
	 * incoming packet could still be being added to our Rx queue, so we
	 * will need to drain it again in the RCU cleanup handler.
	 */
	FUNC5(&conn->rx_queue);

	/* Leave final destruction to RCU.  The connection processor work item
	 * must carry a ref on the connection to prevent us getting here whilst
	 * it is queued or running.
	 */
	FUNC1(&conn->rcu, rxrpc_destroy_connection);
}