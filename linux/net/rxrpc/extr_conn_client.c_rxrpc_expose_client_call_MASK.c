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
struct rxrpc_connection {int /*<<< orphan*/  flags; struct rxrpc_channel* channels; } ;
struct rxrpc_channel {scalar_t__ call_counter; } ;
struct rxrpc_call {unsigned int cid; int /*<<< orphan*/  flags; struct rxrpc_connection* conn; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  RXRPC_CALL_EXPOSED ; 
 unsigned int RXRPC_CHANNELMASK ; 
 int /*<<< orphan*/  RXRPC_CONN_DONT_REUSE ; 
 int /*<<< orphan*/  FUNC0 (struct rxrpc_connection*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct rxrpc_call *call)
{
	unsigned int channel = call->cid & RXRPC_CHANNELMASK;
	struct rxrpc_connection *conn = call->conn;
	struct rxrpc_channel *chan = &conn->channels[channel];

	if (!FUNC2(RXRPC_CALL_EXPOSED, &call->flags)) {
		/* Mark the call ID as being used.  If the callNumber counter
		 * exceeds ~2 billion, we kill the connection after its
		 * outstanding calls have finished so that the counter doesn't
		 * wrap.
		 */
		chan->call_counter++;
		if (chan->call_counter >= INT_MAX)
			FUNC1(RXRPC_CONN_DONT_REUSE, &conn->flags);
		FUNC0(conn, channel);
	}
}