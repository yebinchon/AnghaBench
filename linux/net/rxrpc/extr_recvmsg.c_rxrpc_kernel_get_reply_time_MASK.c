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
struct socket {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rxrpc_call {scalar_t__ rx_hard_ack; int /*<<< orphan*/  user_mutex; struct sk_buff** rxtx_buffer; int /*<<< orphan*/  rx_top; int /*<<< orphan*/  state; } ;
typedef  scalar_t__ rxrpc_seq_t ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RXRPC_CALL_CLIENT_RECV_REPLY ; 
 scalar_t__ RXRPC_RXTX_BUFF_MASK ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct socket *sock, struct rxrpc_call *call,
				 ktime_t *_ts)
{
	struct sk_buff *skb;
	rxrpc_seq_t hard_ack, top, seq;
	bool success = false;

	FUNC2(&call->user_mutex);

	if (FUNC0(call->state) != RXRPC_CALL_CLIENT_RECV_REPLY)
		goto out;

	hard_ack = call->rx_hard_ack;
	if (hard_ack != 0)
		goto out;

	seq = hard_ack + 1;
	top = FUNC5(&call->rx_top);
	if (FUNC1(seq, top))
		goto out;

	skb = call->rxtx_buffer[seq & RXRPC_RXTX_BUFF_MASK];
	if (!skb)
		goto out;

	*_ts = FUNC4(skb);
	success = true;

out:
	FUNC3(&call->user_mutex);
	return success;
}