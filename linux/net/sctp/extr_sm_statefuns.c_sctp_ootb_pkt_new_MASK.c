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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_packet {int dummy; } ;
struct sctp_transport {struct sctp_packet packet; } ;
struct TYPE_8__ {int /*<<< orphan*/  init_tag; } ;
struct sctp_initack_chunk {TYPE_1__ init_hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  init_tag; } ;
struct sctp_init_chunk {TYPE_5__ init_hdr; } ;
struct sctp_chunk {int /*<<< orphan*/  dest; TYPE_6__* sctp_hdr; TYPE_4__* chunk_hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_10__ {TYPE_2__ i; } ;
struct sctp_association {TYPE_3__ peer; } ;
struct TYPE_14__ {int /*<<< orphan*/  ctl_sock; } ;
struct net {TYPE_7__ sctp; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_13__ {int /*<<< orphan*/  vtag; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct TYPE_11__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  SCTP_CID_INIT 129 
#define  SCTP_CID_INIT_ACK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_packet*,struct sctp_transport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk const*) ; 
 struct sctp_transport* FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_transport*,union sctp_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_packet *FUNC8(
					struct net *net,
					const struct sctp_association *asoc,
					const struct sctp_chunk *chunk)
{
	struct sctp_transport *transport;
	struct sctp_packet *packet;
	__u16 sport, dport;
	__u32 vtag;

	/* Get the source and destination port from the inbound packet.  */
	sport = FUNC1(chunk->sctp_hdr->dest);
	dport = FUNC1(chunk->sctp_hdr->source);

	/* The V-tag is going to be the same as the inbound packet if no
	 * association exists, otherwise, use the peer's vtag.
	 */
	if (asoc) {
		/* Special case the INIT-ACK as there is no peer's vtag
		 * yet.
		 */
		switch (chunk->chunk_hdr->type) {
		case SCTP_CID_INIT_ACK:
		{
			struct sctp_initack_chunk *initack;

			initack = (struct sctp_initack_chunk *)chunk->chunk_hdr;
			vtag = FUNC0(initack->init_hdr.init_tag);
			break;
		}
		default:
			vtag = asoc->peer.i.init_tag;
			break;
		}
	} else {
		/* Special case the INIT and stale COOKIE_ECHO as there is no
		 * vtag yet.
		 */
		switch (chunk->chunk_hdr->type) {
		case SCTP_CID_INIT:
		{
			struct sctp_init_chunk *init;

			init = (struct sctp_init_chunk *)chunk->chunk_hdr;
			vtag = FUNC0(init->init_hdr.init_tag);
			break;
		}
		default:
			vtag = FUNC0(chunk->sctp_hdr->vtag);
			break;
		}
	}

	/* Make a transport for the bucket, Eliza... */
	transport = FUNC6(net, FUNC5(chunk), GFP_ATOMIC);
	if (!transport)
		goto nomem;

	/* Cache a route for the transport with the chunk's destination as
	 * the source address.
	 */
	FUNC7(transport, (union sctp_addr *)&chunk->dest,
			     FUNC4(net->sctp.ctl_sock));

	packet = &transport->packet;
	FUNC3(packet, transport, sport, dport);
	FUNC2(packet, vtag, 0);

	return packet;

nomem:
	return NULL;
}