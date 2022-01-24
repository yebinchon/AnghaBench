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
typedef  int /*<<< orphan*/  whdr ;
typedef  int u32 ;
struct rxrpc_wire_header {void* serial; int /*<<< orphan*/  serviceId; scalar_t__ _rsvd; int /*<<< orphan*/  securityIndex; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; scalar_t__ callNumber; void* cid; void* epoch; scalar_t__ __padding; void* min_level; void* nonce; void* version; } ;
struct TYPE_10__ {TYPE_4__* peer; TYPE_3__* local; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int epoch; int cid; } ;
struct rxrpc_connection {int security_nonce; int /*<<< orphan*/  debug_id; TYPE_5__ params; int /*<<< orphan*/  serial; int /*<<< orphan*/  service_id; int /*<<< orphan*/  security_ix; int /*<<< orphan*/  out_clientflag; TYPE_2__ proto; } ;
struct rxkad_challenge {void* serial; int /*<<< orphan*/  serviceId; scalar_t__ _rsvd; int /*<<< orphan*/  securityIndex; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; scalar_t__ callNumber; void* cid; void* epoch; scalar_t__ __padding; void* min_level; void* nonce; void* version; } ;
struct msghdr {scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_wire_header* iov_base; } ;
typedef  int /*<<< orphan*/  challenge ;
struct TYPE_6__ {int /*<<< orphan*/  transport_len; int /*<<< orphan*/  transport; } ;
struct TYPE_9__ {int /*<<< orphan*/  last_tx_at; TYPE_1__ srx; } ;
struct TYPE_8__ {int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  RXRPC_PACKET_TYPE_CHALLENGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  rxrpc_tx_point_rxkad_challenge ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct rxrpc_wire_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct rxrpc_connection *conn)
{
	struct rxkad_challenge challenge;
	struct rxrpc_wire_header whdr;
	struct msghdr msg;
	struct kvec iov[2];
	size_t len;
	u32 serial;
	int ret;

	FUNC0("{%d,%x}", conn->debug_id, FUNC8(conn->params.key));

	ret = FUNC9(conn->params.key);
	if (ret < 0)
		return ret;

	FUNC4(&conn->security_nonce, sizeof(conn->security_nonce));

	challenge.version	= FUNC5(2);
	challenge.nonce		= FUNC5(conn->security_nonce);
	challenge.min_level	= FUNC5(0);
	challenge.__padding	= 0;

	msg.msg_name	= &conn->params.peer->srx.transport;
	msg.msg_namelen	= conn->params.peer->srx.transport_len;
	msg.msg_control	= NULL;
	msg.msg_controllen = 0;
	msg.msg_flags	= 0;

	whdr.epoch	= FUNC5(conn->proto.epoch);
	whdr.cid	= FUNC5(conn->proto.cid);
	whdr.callNumber	= 0;
	whdr.seq	= 0;
	whdr.type	= RXRPC_PACKET_TYPE_CHALLENGE;
	whdr.flags	= conn->out_clientflag;
	whdr.userStatus	= 0;
	whdr.securityIndex = conn->security_ix;
	whdr._rsvd	= 0;
	whdr.serviceId	= FUNC6(conn->service_id);

	iov[0].iov_base	= &whdr;
	iov[0].iov_len	= sizeof(whdr);
	iov[1].iov_base	= &challenge;
	iov[1].iov_len	= sizeof(challenge);

	len = iov[0].iov_len + iov[1].iov_len;

	serial = FUNC3(&conn->serial);
	whdr.serial = FUNC5(serial);
	FUNC2("Tx CHALLENGE %%%u", serial);

	ret = FUNC7(conn->params.local->socket, &msg, iov, 2, len);
	if (ret < 0) {
		FUNC11(conn->debug_id, serial, ret,
				    rxrpc_tx_point_rxkad_challenge);
		return -EAGAIN;
	}

	conn->params.peer->last_tx_at = FUNC10();
	FUNC12(conn->debug_id, &whdr,
			      rxrpc_tx_point_rxkad_challenge);
	FUNC1(" = 0");
	return 0;
}