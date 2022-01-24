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
struct rxrpc_net {int kill_all_client_conns; int /*<<< orphan*/  client_conn_reaper; int /*<<< orphan*/  client_conn_reap_timer; int /*<<< orphan*/  client_conn_cache_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct rxrpc_net *rxnet)
{
	FUNC1("");

	FUNC5(&rxnet->client_conn_cache_lock);
	rxnet->kill_all_client_conns = true;
	FUNC6(&rxnet->client_conn_cache_lock);

	FUNC3(&rxnet->client_conn_reap_timer);

	if (!FUNC4(&rxnet->client_conn_reaper))
		FUNC0("destroy: queue failed");

	FUNC2("");
}