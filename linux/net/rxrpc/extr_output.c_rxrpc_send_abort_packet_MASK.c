#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_5__* peer; TYPE_4__* local; } ;
struct TYPE_10__ {int /*<<< orphan*/  epoch; } ;
struct rxrpc_connection {TYPE_6__ params; int /*<<< orphan*/  serial; int /*<<< orphan*/  out_clientflag; TYPE_3__ proto; } ;
struct rxrpc_call {int /*<<< orphan*/  debug_id; int /*<<< orphan*/  abort_code; int /*<<< orphan*/  service_id; int /*<<< orphan*/  security_ix; int /*<<< orphan*/  call_id; int /*<<< orphan*/  cid; TYPE_2__* peer; int /*<<< orphan*/  lock; scalar_t__ conn; int /*<<< orphan*/  flags; } ;
struct TYPE_14__ {void* serial; int /*<<< orphan*/  serviceId; scalar_t__ _rsvd; int /*<<< orphan*/  securityIndex; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; void* callNumber; void* cid; void* epoch; } ;
struct rxrpc_abort_buffer {TYPE_7__ whdr; void* abort_code; } ;
struct msghdr {scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_abort_buffer* iov_base; } ;
typedef  int /*<<< orphan*/  rxrpc_serial_t ;
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_12__ {int /*<<< orphan*/  last_tx_at; } ;
struct TYPE_11__ {int /*<<< orphan*/  socket; } ;
struct TYPE_8__ {int /*<<< orphan*/  transport_len; int /*<<< orphan*/  transport; } ;
struct TYPE_9__ {TYPE_1__ srx; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  RXRPC_CALL_TX_LAST ; 
 int /*<<< orphan*/  RXRPC_PACKET_TYPE_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct rxrpc_connection* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*,int) ; 
 int /*<<< orphan*/  rxrpc_tx_point_call_abort ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 

int FUNC14(struct rxrpc_call *call)
{
	struct rxrpc_connection *conn = NULL;
	struct rxrpc_abort_buffer pkt;
	struct msghdr msg;
	struct kvec iov[1];
	rxrpc_serial_t serial;
	int ret;

	/* Don't bother sending aborts for a client call once the server has
	 * hard-ACK'd all of its request data.  After that point, we're not
	 * going to stop the operation proceeding, and whilst we might limit
	 * the reply, it's not worth it if we can send a new call on the same
	 * channel instead, thereby closing off this call.
	 */
	if (FUNC6(call) &&
	    FUNC11(RXRPC_CALL_TX_LAST, &call->flags))
		return 0;

	FUNC9(&call->lock);
	if (call->conn)
		conn = FUNC5(call->conn);
	FUNC10(&call->lock);
	if (!conn)
		return -ECONNRESET;

	msg.msg_name	= &call->peer->srx.transport;
	msg.msg_namelen	= call->peer->srx.transport_len;
	msg.msg_control	= NULL;
	msg.msg_controllen = 0;
	msg.msg_flags	= 0;

	pkt.whdr.epoch		= FUNC1(conn->proto.epoch);
	pkt.whdr.cid		= FUNC1(call->cid);
	pkt.whdr.callNumber	= FUNC1(call->call_id);
	pkt.whdr.seq		= 0;
	pkt.whdr.type		= RXRPC_PACKET_TYPE_ABORT;
	pkt.whdr.flags		= conn->out_clientflag;
	pkt.whdr.userStatus	= 0;
	pkt.whdr.securityIndex	= call->security_ix;
	pkt.whdr._rsvd		= 0;
	pkt.whdr.serviceId	= FUNC2(call->service_id);
	pkt.abort_code		= FUNC1(call->abort_code);

	iov[0].iov_base	= &pkt;
	iov[0].iov_len	= sizeof(pkt);

	serial = FUNC0(&conn->serial);
	pkt.whdr.serial = FUNC1(serial);

	ret = FUNC3(conn->params.local->socket,
			     &msg, iov, 1, sizeof(pkt));
	conn->params.peer->last_tx_at = FUNC4();
	if (ret < 0)
		FUNC12(call->debug_id, serial, ret,
				    rxrpc_tx_point_call_abort);
	else
		FUNC13(call->debug_id, &pkt.whdr,
				      rxrpc_tx_point_call_abort);
	FUNC8(call, ret);

	FUNC7(conn);
	return ret;
}