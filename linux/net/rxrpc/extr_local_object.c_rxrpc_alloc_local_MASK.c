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
struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_net {int dummy; } ;
struct TYPE_2__ {scalar_t__ srx_service; } ;
struct rxrpc_local {int /*<<< orphan*/  debug_id; TYPE_1__ srx; int /*<<< orphan*/  services_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  client_conns_lock; int /*<<< orphan*/  client_conns; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  reject_queue; int /*<<< orphan*/  defrag_sem; int /*<<< orphan*/  processor; int /*<<< orphan*/  link; struct rxrpc_net* rxnet; int /*<<< orphan*/  active_users; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rxrpc_local* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct sockaddr_rxrpc const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  rxrpc_local_new ; 
 int /*<<< orphan*/  rxrpc_local_processor ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rxrpc_local *FUNC12(struct rxrpc_net *rxnet,
					     const struct sockaddr_rxrpc *srx)
{
	struct rxrpc_local *local;

	local = FUNC6(sizeof(struct rxrpc_local), GFP_KERNEL);
	if (local) {
		FUNC4(&local->usage, 1);
		FUNC4(&local->active_users, 1);
		local->rxnet = rxnet;
		FUNC0(&local->link);
		FUNC1(&local->processor, rxrpc_local_processor);
		FUNC5(&local->defrag_sem);
		FUNC9(&local->reject_queue);
		FUNC9(&local->event_queue);
		local->client_conns = RB_ROOT;
		FUNC10(&local->client_conns_lock);
		FUNC10(&local->lock);
		FUNC8(&local->services_lock);
		local->debug_id = FUNC3(&rxrpc_debug_id);
		FUNC7(&local->srx, srx, sizeof(*srx));
		local->srx.srx_service = 0;
		FUNC11(local->debug_id, rxrpc_local_new, 1, NULL);
	}

	FUNC2(" = %p", local);
	return local;
}