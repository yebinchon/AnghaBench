#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct TYPE_4__ {int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_call {TYPE_1__* peer; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int rtt_usage; int /*<<< orphan*/  rtt_last_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_ACK_PING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_propose_ack_ping_for_params ; 
 struct rxrpc_skb_priv* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct rxrpc_call *call, struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp = FUNC3(skb);
	ktime_t now = skb->tstamp;

	if (call->peer->rtt_usage < 3 ||
	    FUNC1(FUNC0(call->peer->rtt_last_req, 1000), now))
		FUNC2(call, RXRPC_ACK_PING, sp->hdr.serial,
				  true, true,
				  rxrpc_propose_ack_ping_for_params);
}