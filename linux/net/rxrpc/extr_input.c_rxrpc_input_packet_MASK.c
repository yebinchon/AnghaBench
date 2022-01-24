#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ tstamp; void* priority; int /*<<< orphan*/  mark; } ;
struct TYPE_5__ {scalar_t__ srx_service; } ;
struct rxrpc_sock {scalar_t__ second_service; TYPE_2__ srx; } ;
struct TYPE_6__ {int type; scalar_t__ callNumber; int seq; scalar_t__ securityIndex; scalar_t__ serviceId; unsigned int cid; scalar_t__ serial; int /*<<< orphan*/  flags; } ;
struct rxrpc_skb_priv {TYPE_3__ hdr; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {scalar_t__ service; } ;
struct TYPE_4__ {int service_id; } ;
struct rxrpc_connection {scalar_t__ security_ix; scalar_t__ service_id; struct rxrpc_channel* channels; scalar_t__ hi_serial; int /*<<< orphan*/  debug_id; TYPE_1__ params; int /*<<< orphan*/  flags; } ;
struct rxrpc_channel {scalar_t__ last_call; int const last_type; scalar_t__ call_id; scalar_t__ call; int /*<<< orphan*/  call_debug_id; } ;
struct rxrpc_call {scalar_t__ service_id; int /*<<< orphan*/  user_mutex; int /*<<< orphan*/  usage; int /*<<< orphan*/  flags; scalar_t__ rx_serial; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_AF_RXRPC_INJECT_LOSS ; 
 int /*<<< orphan*/  EBADMSG ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* RXKADINCONSISTENCY ; 
 int /*<<< orphan*/  RXRPC_CALL_RX_HEARD ; 
 unsigned int RXRPC_CHANNELMASK ; 
 int /*<<< orphan*/  RXRPC_CONN_PROBING_FOR_UPGRADE ; 
#define  RXRPC_PACKET_TYPE_10 138 
#define  RXRPC_PACKET_TYPE_11 137 
#define  RXRPC_PACKET_TYPE_ABORT 136 
#define  RXRPC_PACKET_TYPE_ACK 135 
#define  RXRPC_PACKET_TYPE_ACKALL 134 
#define  RXRPC_PACKET_TYPE_BUSY 133 
#define  RXRPC_PACKET_TYPE_CHALLENGE 132 
#define  RXRPC_PACKET_TYPE_DATA 131 
#define  RXRPC_PACKET_TYPE_PARAMS 130 
#define  RXRPC_PACKET_TYPE_RESPONSE 129 
#define  RXRPC_PACKET_TYPE_VERSION 128 
 int /*<<< orphan*/  RXRPC_SKB_MARK_REJECT_ABORT ; 
 void* RX_INVALID_OPERATION ; 
 void* RX_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rxrpc_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (scalar_t__) ; 
 struct rxrpc_local* FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct rxrpc_skb_priv*,struct sk_buff*) ; 
 struct rxrpc_connection* FUNC15 (struct rxrpc_local*,struct sk_buff*,struct rxrpc_peer**) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct rxrpc_sock*,struct rxrpc_connection*,struct rxrpc_call*) ; 
 struct rxrpc_call* FUNC19 (struct rxrpc_local*,struct rxrpc_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct rxrpc_connection*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct rxrpc_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct rxrpc_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct rxrpc_call*,struct sk_buff*) ; 
 struct rxrpc_skb_priv* FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  rxrpc_skb_freed ; 
 int /*<<< orphan*/  rxrpc_skb_lost ; 
 int /*<<< orphan*/  rxrpc_skb_received ; 
 int /*<<< orphan*/  rxrpc_skb_unshared ; 
 int /*<<< orphan*/  rxrpc_skb_unshared_nomem ; 
 scalar_t__ FUNC26 (struct rxrpc_skb_priv*) ; 
 scalar_t__ FUNC27 (struct rxrpc_skb_priv*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC31 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*,unsigned int,scalar_t__,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC36 (struct rxrpc_skb_priv*) ; 
 int /*<<< orphan*/  FUNC37 (struct rxrpc_skb_priv*) ; 
 scalar_t__ FUNC38 (int) ; 

int FUNC39(struct sock *udp_sk, struct sk_buff *skb)
{
	struct rxrpc_local *local = FUNC11(udp_sk);
	struct rxrpc_connection *conn;
	struct rxrpc_channel *chan;
	struct rxrpc_call *call = NULL;
	struct rxrpc_skb_priv *sp;
	struct rxrpc_peer *peer = NULL;
	struct rxrpc_sock *rx = NULL;
	unsigned int channel;

	FUNC2("%p", udp_sk);

	if (FUNC38(!local)) {
		FUNC7(skb);
		return 0;
	}
	if (skb->tstamp == 0)
		skb->tstamp = FUNC8();

	FUNC20(skb, rxrpc_skb_received);

	FUNC30(skb, sizeof(struct udphdr));

	/* The UDP protocol already released all skb resources;
	 * we are free to add our own data there.
	 */
	sp = FUNC25(skb);

	/* dig out the RxRPC connection details */
	if (FUNC14(sp, skb) < 0)
		goto bad_message;

	if (FUNC0(CONFIG_AF_RXRPC_INJECT_LOSS)) {
		static int lose;
		if ((lose++ & 7) == 7) {
			FUNC36(sp);
			FUNC16(skb, rxrpc_skb_lost);
			return 0;
		}
	}

	if (skb->tstamp == 0)
		skb->tstamp = FUNC8();
	FUNC37(sp);

	switch (sp->hdr.type) {
	case RXRPC_PACKET_TYPE_VERSION:
		if (FUNC26(sp))
			goto discard;
		FUNC22(local, skb);
		goto out;

	case RXRPC_PACKET_TYPE_BUSY:
		if (FUNC27(sp))
			goto discard;
		/* Fall through */
	case RXRPC_PACKET_TYPE_ACK:
	case RXRPC_PACKET_TYPE_ACKALL:
		if (sp->hdr.callNumber == 0)
			goto bad_message;
		/* Fall through */
	case RXRPC_PACKET_TYPE_ABORT:
		break;

	case RXRPC_PACKET_TYPE_DATA:
		if (sp->hdr.callNumber == 0 ||
		    sp->hdr.seq == 0)
			goto bad_message;
		if (!FUNC28(skb))
			goto bad_message;

		/* Unshare the packet so that it can be modified for in-place
		 * decryption.
		 */
		if (sp->hdr.securityIndex != 0) {
			struct sk_buff *nskb = FUNC31(skb, GFP_ATOMIC);
			if (!nskb) {
				FUNC13(skb, rxrpc_skb_unshared_nomem);
				goto out;
			}

			if (nskb != skb) {
				FUNC13(skb, rxrpc_skb_received);
				skb = nskb;
				FUNC20(skb, rxrpc_skb_unshared);
				sp = FUNC25(skb);
			}
		}
		break;

	case RXRPC_PACKET_TYPE_CHALLENGE:
		if (FUNC27(sp))
			goto discard;
		break;
	case RXRPC_PACKET_TYPE_RESPONSE:
		if (FUNC26(sp))
			goto discard;
		break;

		/* Packet types 9-11 should just be ignored. */
	case RXRPC_PACKET_TYPE_PARAMS:
	case RXRPC_PACKET_TYPE_10:
	case RXRPC_PACKET_TYPE_11:
		goto discard;

	default:
		FUNC4("Rx Bad Packet Type %u", sp->hdr.type);
		goto bad_message;
	}

	if (sp->hdr.serviceId == 0)
		goto bad_message;

	if (FUNC27(sp)) {
		/* Weed out packets to services we're not offering.  Packets
		 * that would begin a call are explicitly rejected and the rest
		 * are just discarded.
		 */
		rx = FUNC10(local->service);
		if (!rx || (sp->hdr.serviceId != rx->srx.srx_service &&
			    sp->hdr.serviceId != rx->second_service)) {
			if (sp->hdr.type == RXRPC_PACKET_TYPE_DATA &&
			    sp->hdr.seq == 1)
				goto unsupported_service;
			goto discard;
		}
	}

	conn = FUNC15(local, skb, &peer);
	if (conn) {
		if (sp->hdr.securityIndex != conn->security_ix)
			goto wrong_security;

		if (sp->hdr.serviceId != conn->service_id) {
			int old_id;

			if (!FUNC32(RXRPC_CONN_PROBING_FOR_UPGRADE, &conn->flags))
				goto reupgrade;
			old_id = FUNC6(&conn->service_id, conn->params.service_id,
					 sp->hdr.serviceId);

			if (old_id != conn->params.service_id &&
			    old_id != sp->hdr.serviceId)
				goto reupgrade;
		}

		if (sp->hdr.callNumber == 0) {
			/* Connection-level packet */
			FUNC1("CONN %p {%d}", conn, conn->debug_id);
			FUNC21(conn, skb);
			goto out;
		}

		if ((int)sp->hdr.serial - (int)conn->hi_serial > 0)
			conn->hi_serial = sp->hdr.serial;

		/* Call-bound packets are routed by connection channel. */
		channel = sp->hdr.cid & RXRPC_CHANNELMASK;
		chan = &conn->channels[channel];

		/* Ignore really old calls */
		if (sp->hdr.callNumber < chan->last_call)
			goto discard;

		if (sp->hdr.callNumber == chan->last_call) {
			if (chan->call ||
			    sp->hdr.type == RXRPC_PACKET_TYPE_ABORT)
				goto discard;

			/* For the previous service call, if completed
			 * successfully, we discard all further packets.
			 */
			if (FUNC12(conn) &&
			    chan->last_type == RXRPC_PACKET_TYPE_ACK)
				goto discard;

			/* But otherwise we need to retransmit the final packet
			 * from data cached in the connection record.
			 */
			if (sp->hdr.type == RXRPC_PACKET_TYPE_DATA)
				FUNC34(chan->call_debug_id,
						    sp->hdr.seq,
						    sp->hdr.serial,
						    sp->hdr.flags, 0);
			FUNC21(conn, skb);
			goto out;
		}

		call = FUNC10(chan->call);

		if (sp->hdr.callNumber > chan->call_id) {
			if (FUNC26(sp))
				goto reject_packet;
			if (call)
				FUNC18(rx, conn, call);
			call = NULL;
		}

		if (call) {
			if (sp->hdr.serviceId != call->service_id)
				call->service_id = sp->hdr.serviceId;
			if ((int)sp->hdr.serial - (int)call->rx_serial > 0)
				call->rx_serial = sp->hdr.serial;
			if (!FUNC32(RXRPC_CALL_RX_HEARD, &call->flags))
				FUNC29(RXRPC_CALL_RX_HEARD, &call->flags);
		}
	}

	if (!call || FUNC5(&call->usage) == 0) {
		if (FUNC26(sp) ||
		    sp->hdr.type != RXRPC_PACKET_TYPE_DATA)
			goto bad_message;
		if (sp->hdr.seq != 1)
			goto discard;
		call = FUNC19(local, rx, skb);
		if (!call)
			goto reject_packet;
		FUNC24(call, skb);
		FUNC9(&call->user_mutex);
	}

	/* Process a call packet; this either discards or passes on the ref
	 * elsewhere.
	 */
	FUNC17(call, skb);
	goto out;

discard:
	FUNC16(skb, rxrpc_skb_freed);
out:
	FUNC35(0, 0);
	return 0;

wrong_security:
	FUNC33(0, "SEC", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
			  RXKADINCONSISTENCY, EBADMSG);
	skb->priority = RXKADINCONSISTENCY;
	goto post_abort;

unsupported_service:
	FUNC33(0, "INV", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
			  RX_INVALID_OPERATION, EOPNOTSUPP);
	skb->priority = RX_INVALID_OPERATION;
	goto post_abort;

reupgrade:
	FUNC33(0, "UPG", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
			  RX_PROTOCOL_ERROR, EBADMSG);
	goto protocol_error;

bad_message:
	FUNC33(0, "BAD", sp->hdr.cid, sp->hdr.callNumber, sp->hdr.seq,
			  RX_PROTOCOL_ERROR, EBADMSG);
protocol_error:
	skb->priority = RX_PROTOCOL_ERROR;
post_abort:
	skb->mark = RXRPC_SKB_MARK_REJECT_ABORT;
reject_packet:
	FUNC35(skb->mark, skb->priority);
	FUNC23(local, skb);
	FUNC3(" [badmsg]");
	return 0;
}