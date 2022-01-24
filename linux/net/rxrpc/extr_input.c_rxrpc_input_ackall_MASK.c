#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int /*<<< orphan*/  input_lock; int /*<<< orphan*/  tx_top; } ;
struct rxrpc_ack_summary {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*,int,char*) ; 
 scalar_t__ FUNC2 (struct rxrpc_call*,int /*<<< orphan*/ ,struct rxrpc_ack_summary*) ; 
 struct rxrpc_skb_priv* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rxrpc_call *call, struct sk_buff *skb)
{
	struct rxrpc_ack_summary summary = { 0 };
	struct rxrpc_skb_priv *sp = FUNC3(skb);

	FUNC0("Rx ACKALL %%%u", sp->hdr.serial);

	FUNC4(&call->input_lock);

	if (FUNC2(call, call->tx_top, &summary))
		FUNC1(call, false, "ETL");

	FUNC5(&call->input_lock);
}