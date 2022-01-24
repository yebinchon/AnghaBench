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
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_local {int /*<<< orphan*/  debug_id; int /*<<< orphan*/  event_queue; } ;

/* Variables and functions */
#define  RXRPC_PACKET_TYPE_VERSION 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_local*,TYPE_1__*,struct sk_buff*) ; 
 struct rxrpc_skb_priv* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  rxrpc_skb_freed ; 
 int /*<<< orphan*/  rxrpc_skb_seen ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int,char*,int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct rxrpc_local *local)
{
	struct sk_buff *skb;
	char v;

	FUNC1("");

	skb = FUNC9(&local->event_queue);
	if (skb) {
		struct rxrpc_skb_priv *sp = FUNC7(skb);

		FUNC5(skb, rxrpc_skb_seen);
		FUNC0("{%d},{%u}", local->debug_id, sp->hdr.type);

		switch (sp->hdr.type) {
		case RXRPC_PACKET_TYPE_VERSION:
			if (FUNC8(skb, sizeof(struct rxrpc_wire_header),
					  &v, 1) < 0)
				return;
			FUNC3("Rx VERSION { %02x }", v);
			if (v == 0)
				FUNC6(local, &sp->hdr, skb);
			break;

		default:
			/* Just ignore anything we don't understand */
			break;
		}

		FUNC4(skb, rxrpc_skb_freed);
	}

	FUNC2("");
}