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
struct rxrpc_call {scalar_t__ acks_lost_ping; int /*<<< orphan*/  flags; int /*<<< orphan*/  ping_serial; int /*<<< orphan*/  ping_time; } ;
typedef  scalar_t__ rxrpc_serial_t ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXRPC_CALL_PINGING ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_rtt_rx_ping_response ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rxrpc_call *call,
				      ktime_t resp_time,
				      rxrpc_serial_t orig_serial,
				      rxrpc_serial_t ack_serial)
{
	rxrpc_serial_t ping_serial;
	ktime_t ping_time;

	ping_time = call->ping_time;
	FUNC5();
	ping_serial = FUNC0(call->ping_serial);

	if (orig_serial == call->acks_lost_ping)
		FUNC3(call);

	if (FUNC2(orig_serial, ping_serial) ||
	    !FUNC6(RXRPC_CALL_PINGING, &call->flags))
		return;
	if (FUNC1(orig_serial, ping_serial))
		return;

	FUNC4(call, rxrpc_rtt_rx_ping_response,
			   orig_serial, ack_serial, ping_time, resp_time);
}