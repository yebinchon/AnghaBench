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
struct rxrpc_call {int /*<<< orphan*/  ping_at; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_EV_PING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long jiffies ; 
 unsigned long rxrpc_idle_ack_delay ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_timer_set_for_ping ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rxrpc_call *call,
			       bool immediate, bool background)
{
	if (immediate) {
		if (background &&
		    !FUNC3(RXRPC_CALL_EV_PING, &call->events))
			FUNC1(call);
	} else {
		unsigned long now = jiffies;
		unsigned long ping_at = now + rxrpc_idle_ack_delay;

		if (FUNC4(ping_at, call->ping_at)) {
			FUNC0(call->ping_at, ping_at);
			FUNC2(call, ping_at, now,
						rxrpc_timer_set_for_ping);
		}
	}
}