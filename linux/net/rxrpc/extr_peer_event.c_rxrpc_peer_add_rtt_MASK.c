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
typedef  size_t u8 ;
typedef  int u64 ;
struct rxrpc_peer {int rtt_sum; size_t rtt_cursor; size_t rtt_usage; int rtt; int /*<<< orphan*/  rtt_input_lock; scalar_t__* rtt_cache; } ;
struct rxrpc_call {struct rxrpc_peer* peer; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  rxrpc_serial_t ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum rxrpc_rtt_rx_trace { ____Placeholder_rxrpc_rtt_rx_trace } rxrpc_rtt_rx_trace ;

/* Variables and functions */
 int RXRPC_RTT_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,int) ; 

void FUNC6(struct rxrpc_call *call, enum rxrpc_rtt_rx_trace why,
			rxrpc_serial_t send_serial, rxrpc_serial_t resp_serial,
			ktime_t send_time, ktime_t resp_time)
{
	struct rxrpc_peer *peer = call->peer;
	s64 rtt;
	u64 sum = peer->rtt_sum, avg;
	u8 cursor = peer->rtt_cursor, usage = peer->rtt_usage;

	rtt = FUNC2(FUNC1(resp_time, send_time));
	if (rtt < 0)
		return;

	FUNC3(&peer->rtt_input_lock);

	/* Replace the oldest datum in the RTT buffer */
	sum -= peer->rtt_cache[cursor];
	sum += rtt;
	peer->rtt_cache[cursor] = rtt;
	peer->rtt_cursor = (cursor + 1) & (RXRPC_RTT_CACHE_SIZE - 1);
	peer->rtt_sum = sum;
	if (usage < RXRPC_RTT_CACHE_SIZE) {
		usage++;
		peer->rtt_usage = usage;
	}

	FUNC4(&peer->rtt_input_lock);

	/* Now recalculate the average */
	if (usage == RXRPC_RTT_CACHE_SIZE) {
		avg = sum / RXRPC_RTT_CACHE_SIZE;
	} else {
		avg = sum;
		FUNC0(avg, usage);
	}

	/* Don't need to update this under lock */
	peer->rtt = avg;
	FUNC5(call, why, send_serial, resp_serial, rtt,
			   usage, avg);
}