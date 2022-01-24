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
struct TYPE_2__ {int type; int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int /*<<< orphan*/  expect_rx_by; int /*<<< orphan*/  next_rx_timo; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
#define  RXRPC_PACKET_TYPE_ABORT 132 
#define  RXRPC_PACKET_TYPE_ACK 131 
#define  RXRPC_PACKET_TYPE_ACKALL 130 
#define  RXRPC_PACKET_TYPE_BUSY 129 
#define  RXRPC_PACKET_TYPE_DATA 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct rxrpc_call*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  rxrpc_skb_freed ; 
 int /*<<< orphan*/  rxrpc_timer_set_for_normal ; 

__attribute__((used)) static void FUNC12(struct rxrpc_call *call,
				    struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp = FUNC11(skb);
	unsigned long timo;

	FUNC2("%p,%p", call, skb);

	timo = FUNC0(call->next_rx_timo);
	if (timo) {
		unsigned long now = jiffies, expect_rx_by;

		expect_rx_by = now + timo;
		FUNC1(call->expect_rx_by, expect_rx_by);
		FUNC10(call, expect_rx_by, now,
					rxrpc_timer_set_for_normal);
	}

	switch (sp->hdr.type) {
	case RXRPC_PACKET_TYPE_DATA:
		FUNC9(call, skb);
		goto no_free;

	case RXRPC_PACKET_TYPE_ACK:
		FUNC7(call, skb);
		break;

	case RXRPC_PACKET_TYPE_BUSY:
		FUNC4("Rx BUSY %%%u", sp->hdr.serial);

		/* Just ignore BUSY packets from the server; the retry and
		 * lifespan timers will take care of business.  BUSY packets
		 * from the client don't make sense.
		 */
		break;

	case RXRPC_PACKET_TYPE_ABORT:
		FUNC6(call, skb);
		break;

	case RXRPC_PACKET_TYPE_ACKALL:
		FUNC8(call, skb);
		break;

	default:
		break;
	}

	FUNC5(skb, rxrpc_skb_freed);
no_free:
	FUNC3("");
}