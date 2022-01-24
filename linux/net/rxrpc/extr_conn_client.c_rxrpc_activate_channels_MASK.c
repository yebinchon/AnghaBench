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
struct rxrpc_connection {scalar_t__ active_chans; int /*<<< orphan*/  channel_lock; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 scalar_t__ RXRPC_ACTIVE_CHANS_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  rxrpc_client_activate_chans ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_connection*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rxrpc_connection *conn)
{
	FUNC0("%d", conn->debug_id);

	FUNC5(conn, -1, rxrpc_client_activate_chans);

	if (conn->active_chans == RXRPC_ACTIVE_CHANS_MASK)
		return;

	FUNC3(&conn->channel_lock);
	FUNC2(conn);
	FUNC4(&conn->channel_lock);
	FUNC1("");
}