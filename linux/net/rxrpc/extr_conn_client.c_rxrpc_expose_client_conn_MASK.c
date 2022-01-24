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
struct rxrpc_connection {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CONN_EXPOSED ; 
 int /*<<< orphan*/  rxrpc_client_exposed ; 
 int /*<<< orphan*/  FUNC0 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_connection*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rxrpc_connection *conn,
				     unsigned int channel)
{
	if (!FUNC1(RXRPC_CONN_EXPOSED, &conn->flags)) {
		FUNC2(conn, channel, rxrpc_client_exposed);
		FUNC0(conn);
	}
}