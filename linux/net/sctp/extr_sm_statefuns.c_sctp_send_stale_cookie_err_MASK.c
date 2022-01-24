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
struct TYPE_5__ {int /*<<< orphan*/  peer_vtag; } ;
struct sctp_signed_cookie {TYPE_1__ c; } ;
struct sctp_packet {int /*<<< orphan*/  vtag; } ;
struct TYPE_7__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_8__ {struct sctp_signed_cookie* cookie_hdr; } ;
struct sctp_chunk {TYPE_2__* skb; TYPE_4__ subh; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*) ; 
 struct sctp_packet* FUNC4 (struct net*,struct sctp_association const*,struct sctp_chunk const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_packet*,struct sctp_chunk*) ; 

__attribute__((used)) static void FUNC6(struct net *net,
				       const struct sctp_endpoint *ep,
				       const struct sctp_association *asoc,
				       const struct sctp_chunk *chunk,
				       struct sctp_cmd_seq *commands,
				       struct sctp_chunk *err_chunk)
{
	struct sctp_packet *packet;

	if (err_chunk) {
		packet = FUNC4(net, asoc, chunk);
		if (packet) {
			struct sctp_signed_cookie *cookie;

			/* Override the OOTB vtag from the cookie. */
			cookie = chunk->subh.cookie_hdr;
			packet->vtag = cookie->c.peer_vtag;

			/* Set the skb to the belonging sock for accounting. */
			err_chunk->skb->sk = ep->base.sk;
			FUNC5(packet, err_chunk);
			FUNC2(commands, SCTP_CMD_SEND_PKT,
					FUNC1(packet));
			FUNC0(net, SCTP_MIB_OUTCTRLCHUNKS);
		} else
			FUNC3 (err_chunk);
	}
}