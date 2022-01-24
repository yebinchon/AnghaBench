#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  whdr ;
typedef  int /*<<< orphan*/  u32 ;
struct rxrpc_wire_header {void* serial; int /*<<< orphan*/  serviceId; int /*<<< orphan*/  securityIndex; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; void* cid; void* epoch; } ;
struct rxrpc_host_header {int /*<<< orphan*/  serviceId; int /*<<< orphan*/  securityIndex; int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; } ;
struct TYPE_8__ {TYPE_3__* peer; TYPE_2__* local; } ;
struct rxrpc_connection {TYPE_4__ params; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  serial; int /*<<< orphan*/  out_clientflag; } ;
struct rxkad_response {void* serial; int /*<<< orphan*/  serviceId; int /*<<< orphan*/  securityIndex; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; void* cid; void* epoch; } ;
struct rxkad_key {int ticket_len; scalar_t__ ticket; } ;
struct msghdr {scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_wire_header* iov_base; } ;
struct TYPE_5__ {int /*<<< orphan*/  transport_len; int /*<<< orphan*/  transport; } ;
struct TYPE_7__ {int /*<<< orphan*/  last_tx_at; TYPE_1__ srx; } ;
struct TYPE_6__ {int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  RXRPC_PACKET_TYPE_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_wire_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rxrpc_tx_point_rxkad_response ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rxrpc_connection *conn,
			       struct rxrpc_host_header *hdr,
			       struct rxkad_response *resp,
			       const struct rxkad_key *s2)
{
	struct rxrpc_wire_header whdr;
	struct msghdr msg;
	struct kvec iov[3];
	size_t len;
	u32 serial;
	int ret;

	FUNC0("");

	msg.msg_name	= &conn->params.peer->srx.transport;
	msg.msg_namelen	= conn->params.peer->srx.transport_len;
	msg.msg_control	= NULL;
	msg.msg_controllen = 0;
	msg.msg_flags	= 0;

	FUNC8(&whdr, 0, sizeof(whdr));
	whdr.epoch	= FUNC4(hdr->epoch);
	whdr.cid	= FUNC4(hdr->cid);
	whdr.type	= RXRPC_PACKET_TYPE_RESPONSE;
	whdr.flags	= conn->out_clientflag;
	whdr.securityIndex = hdr->securityIndex;
	whdr.serviceId	= FUNC5(hdr->serviceId);

	iov[0].iov_base	= &whdr;
	iov[0].iov_len	= sizeof(whdr);
	iov[1].iov_base	= resp;
	iov[1].iov_len	= sizeof(*resp);
	iov[2].iov_base	= (void *)s2->ticket;
	iov[2].iov_len	= s2->ticket_len;

	len = iov[0].iov_len + iov[1].iov_len + iov[2].iov_len;

	serial = FUNC3(&conn->serial);
	whdr.serial = FUNC4(serial);
	FUNC2("Tx RESPONSE %%%u", serial);

	ret = FUNC6(conn->params.local->socket, &msg, iov, 3, len);
	if (ret < 0) {
		FUNC9(conn->debug_id, serial, ret,
				    rxrpc_tx_point_rxkad_response);
		return -EAGAIN;
	}

	conn->params.peer->last_tx_at = FUNC7();
	FUNC1(" = 0");
	return 0;
}