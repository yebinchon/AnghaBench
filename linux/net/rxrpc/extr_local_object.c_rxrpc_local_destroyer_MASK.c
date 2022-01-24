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
struct socket {TYPE_1__* sk; } ;
struct rxrpc_net {int /*<<< orphan*/  service_conn_reaper; int /*<<< orphan*/  local_mutex; } ;
struct rxrpc_local {int dead; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  reject_queue; struct socket* socket; int /*<<< orphan*/  service; int /*<<< orphan*/  link; int /*<<< orphan*/  debug_id; struct rxrpc_net* rxnet; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

__attribute__((used)) static void FUNC10(struct rxrpc_local *local)
{
	struct socket *socket = local->socket;
	struct rxrpc_net *rxnet = local->rxnet;

	FUNC1("%d", local->debug_id);

	local->dead = true;

	FUNC4(&rxnet->local_mutex);
	FUNC3(&local->link);
	FUNC5(&rxnet->local_mutex);

	FUNC6(local);
	FUNC8(&rxnet->service_conn_reaper);
	FUNC0(!local->service);

	if (socket) {
		local->socket = NULL;
		FUNC2(socket, SHUT_RDWR);
		socket->sk->sk_user_data = NULL;
		FUNC9(socket);
	}

	/* At this point, there should be no more packets coming in to the
	 * local endpoint.
	 */
	FUNC7(&local->reject_queue);
	FUNC7(&local->event_queue);
}