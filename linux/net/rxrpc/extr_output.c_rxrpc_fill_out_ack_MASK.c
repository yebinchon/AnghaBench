#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct TYPE_9__ {TYPE_3__* peer; } ;
struct rxrpc_connection {TYPE_4__ params; } ;
struct rxrpc_call {size_t ackr_serial; size_t ackr_prev_seq; int nr_jumbo_bad; size_t rx_winsize; scalar_t__* rxtx_buffer; int /*<<< orphan*/  rx_top; int /*<<< orphan*/  rx_hard_ack; } ;
struct TYPE_10__ {void* jumbo_max; void* rwind; void* maxMTU; void* rxMTU; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {size_t nAcks; scalar_t__ reason; void* serial; void* previousPacket; void* firstPacket; void* maxSkew; void* bufferSpace; } ;
struct rxrpc_ack_buffer {TYPE_5__ ackinfo; TYPE_2__ whdr; TYPE_1__ ack; scalar_t__* acks; } ;
typedef  size_t rxrpc_serial_t ;
typedef  size_t rxrpc_seq_t ;
struct TYPE_8__ {size_t if_mtu; size_t hdrsize; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RXRPC_ACK_PING ; 
 int /*<<< orphan*/  RXRPC_ACK_TYPE_ACK ; 
 int /*<<< orphan*/  RXRPC_ACK_TYPE_NACK ; 
 int /*<<< orphan*/  RXRPC_REQUEST_ACK ; 
 size_t RXRPC_RXTX_BUFF_MASK ; 
 scalar_t__ FUNC1 (size_t,size_t) ; 
 scalar_t__ FUNC2 (size_t,size_t) ; 
 void* FUNC3 (size_t) ; 
 void* FUNC4 (int) ; 
 int rxrpc_rx_jumbo_max ; 
 size_t rxrpc_rx_mtu ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC6(struct rxrpc_connection *conn,
				 struct rxrpc_call *call,
				 struct rxrpc_ack_buffer *pkt,
				 rxrpc_seq_t *_hard_ack,
				 rxrpc_seq_t *_top,
				 u8 reason)
{
	rxrpc_serial_t serial;
	rxrpc_seq_t hard_ack, top, seq;
	int ix;
	u32 mtu, jmax;
	u8 *ackp = pkt->acks;

	/* Barrier against rxrpc_input_data(). */
	serial = call->ackr_serial;
	hard_ack = FUNC0(call->rx_hard_ack);
	top = FUNC5(&call->rx_top);
	*_hard_ack = hard_ack;
	*_top = top;

	pkt->ack.bufferSpace	= FUNC4(8);
	pkt->ack.maxSkew	= FUNC4(0);
	pkt->ack.firstPacket	= FUNC3(hard_ack + 1);
	pkt->ack.previousPacket	= FUNC3(call->ackr_prev_seq);
	pkt->ack.serial		= FUNC3(serial);
	pkt->ack.reason		= reason;
	pkt->ack.nAcks		= top - hard_ack;

	if (reason == RXRPC_ACK_PING)
		pkt->whdr.flags |= RXRPC_REQUEST_ACK;

	if (FUNC1(top, hard_ack)) {
		seq = hard_ack + 1;
		do {
			ix = seq & RXRPC_RXTX_BUFF_MASK;
			if (call->rxtx_buffer[ix])
				*ackp++ = RXRPC_ACK_TYPE_ACK;
			else
				*ackp++ = RXRPC_ACK_TYPE_NACK;
			seq++;
		} while (FUNC2(seq, top));
	}

	mtu = conn->params.peer->if_mtu;
	mtu -= conn->params.peer->hdrsize;
	jmax = (call->nr_jumbo_bad > 3) ? 1 : rxrpc_rx_jumbo_max;
	pkt->ackinfo.rxMTU	= FUNC3(rxrpc_rx_mtu);
	pkt->ackinfo.maxMTU	= FUNC3(mtu);
	pkt->ackinfo.rwind	= FUNC3(call->rx_winsize);
	pkt->ackinfo.jumbo_max	= FUNC3(jmax);

	*ackp++ = 0;
	*ackp++ = 0;
	*ackp++ = 0;
	return top - hard_ack + 3;
}