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
typedef  int /*<<< orphan*/  wtmp ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; } ;
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  RXRPC_CALL_REMOTELY_ABORTED ; 
 int /*<<< orphan*/  RX_CALL_DEAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*) ; 
 scalar_t__ FUNC4 (struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rxrpc_call *call, struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp = FUNC5(skb);
	__be32 wtmp;
	u32 abort_code = RX_CALL_DEAD;

	FUNC0("");

	if (skb->len >= 4 &&
	    FUNC6(skb, sizeof(struct rxrpc_wire_header),
			  &wtmp, sizeof(wtmp)) >= 0)
		abort_code = FUNC2(wtmp);

	FUNC7(call, sp->hdr.serial, abort_code);

	FUNC1("Rx ABORT %%%u { %x }", sp->hdr.serial, abort_code);

	if (FUNC4(call, RXRPC_CALL_REMOTELY_ABORTED,
				      abort_code, -ECONNABORTED))
		FUNC3(call);
}