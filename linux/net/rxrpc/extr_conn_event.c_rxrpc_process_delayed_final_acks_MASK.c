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
struct rxrpc_channel {int /*<<< orphan*/  final_ack_at; } ;

/* Variables and functions */
 unsigned long LONG_MAX ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RXRPC_CONN_FINAL_ACK_0 ; 
 unsigned int RXRPC_MAXCALLS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_connection*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_connection*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct rxrpc_connection *conn)
{
	unsigned long j = jiffies, next_j;
	unsigned int channel;
	bool set;

again:
	next_j = j + LONG_MAX;
	set = false;
	for (channel = 0; channel < RXRPC_MAXCALLS; channel++) {
		struct rxrpc_channel *chan = &conn->channels[channel];
		unsigned long ack_at;

		if (!FUNC5(RXRPC_CONN_FINAL_ACK_0 + channel, &conn->flags))
			continue;

		FUNC3(); /* vs rxrpc_disconnect_client_call */
		ack_at = FUNC0(chan->final_ack_at);

		if (FUNC6(j, ack_at)) {
			if (FUNC6(ack_at, next_j)) {
				next_j = ack_at;
				set = true;
			}
			continue;
		}

		if (FUNC4(RXRPC_CONN_FINAL_ACK_0 + channel,
				       &conn->flags))
			FUNC1(conn, NULL, channel);
	}

	j = jiffies;
	if (FUNC7(next_j, j))
		goto again;
	if (set)
		FUNC2(conn, next_j);
}