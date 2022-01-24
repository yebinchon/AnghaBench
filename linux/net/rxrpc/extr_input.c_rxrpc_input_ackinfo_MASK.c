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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_peer {unsigned int maxdata; scalar_t__ mtu; int /*<<< orphan*/  lock; scalar_t__ hdrsize; } ;
struct rxrpc_call {int tx_winsize; int cong_ssthresh; int /*<<< orphan*/  waitq; struct rxrpc_peer* peer; } ;
struct rxrpc_ackinfo {int /*<<< orphan*/  maxMTU; int /*<<< orphan*/  rxMTU; int /*<<< orphan*/  rwind; int /*<<< orphan*/  jumbo_max; } ;

/* Variables and functions */
 int RXRPC_RXTX_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 unsigned int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct rxrpc_call *call, struct sk_buff *skb,
				struct rxrpc_ackinfo *ackinfo)
{
	struct rxrpc_skb_priv *sp = FUNC4(skb);
	struct rxrpc_peer *peer;
	unsigned int mtu;
	bool wake = false;
	u32 rwind = FUNC3(ackinfo->rwind);

	FUNC1("Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }",
	       sp->hdr.serial,
	       FUNC3(ackinfo->rxMTU), FUNC3(ackinfo->maxMTU),
	       rwind, FUNC3(ackinfo->jumbo_max));

	if (call->tx_winsize != rwind) {
		if (rwind > RXRPC_RXTX_BUFF_SIZE - 1)
			rwind = RXRPC_RXTX_BUFF_SIZE - 1;
		if (rwind > call->tx_winsize)
			wake = true;
		FUNC7(call, sp->hdr.serial,
					    FUNC3(ackinfo->rwind), wake);
		call->tx_winsize = rwind;
	}

	if (call->cong_ssthresh > rwind)
		call->cong_ssthresh = rwind;

	mtu = FUNC2(FUNC3(ackinfo->rxMTU), FUNC3(ackinfo->maxMTU));

	peer = call->peer;
	if (mtu < peer->maxdata) {
		FUNC5(&peer->lock);
		peer->maxdata = mtu;
		peer->mtu = mtu + peer->hdrsize;
		FUNC6(&peer->lock);
		FUNC0("Net MTU %u (maxdata %u)", peer->mtu, peer->maxdata);
	}

	if (wake)
		FUNC8(&call->waitq);
}