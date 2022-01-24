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
typedef  int u8 ;
struct sk_buff {unsigned int len; } ;
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct rxrpc_skb_priv {int /*<<< orphan*/  rx_flags; int /*<<< orphan*/  nr_subpackets; int /*<<< orphan*/  rx_req_ack; TYPE_1__ hdr; } ;
struct rxrpc_jumbo_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ RXRPC_JUMBO_DATALEN ; 
 int RXRPC_JUMBO_PACKET ; 
 unsigned int RXRPC_JUMBO_SUBPKTLEN ; 
 int RXRPC_LAST_PACKET ; 
 int RXRPC_REQUEST_ACK ; 
 int /*<<< orphan*/  RXRPC_SKB_INCL_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,unsigned int,int*,int) ; 

__attribute__((used)) static bool FUNC3(struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp = FUNC1(skb);
	unsigned int offset = sizeof(struct rxrpc_wire_header);
	unsigned int len = skb->len;
	u8 flags = sp->hdr.flags;

	for (;;) {
		if (flags & RXRPC_REQUEST_ACK)
			FUNC0(sp->nr_subpackets, sp->rx_req_ack);
		sp->nr_subpackets++;

		if (!(flags & RXRPC_JUMBO_PACKET))
			break;

		if (len - offset < RXRPC_JUMBO_SUBPKTLEN)
			goto protocol_error;
		if (flags & RXRPC_LAST_PACKET)
			goto protocol_error;
		offset += RXRPC_JUMBO_DATALEN;
		if (FUNC2(skb, offset, &flags, 1) < 0)
			goto protocol_error;
		offset += sizeof(struct rxrpc_jumbo_header);
	}

	if (flags & RXRPC_LAST_PACKET)
		sp->rx_flags |= RXRPC_SKB_INCL_LAST;
	return true;

protocol_error:
	return false;
}