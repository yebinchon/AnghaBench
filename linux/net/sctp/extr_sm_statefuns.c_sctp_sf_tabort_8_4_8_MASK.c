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
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_packet {int /*<<< orphan*/  vtag; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; TYPE_1__* sctp_hdr; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  vtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_packet*) ; 
 struct sctp_packet* FUNC6 (struct net*,struct sctp_association const*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_packet*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 scalar_t__ FUNC9 (struct sctp_chunk*) ; 

__attribute__((used)) static enum sctp_disposition FUNC10(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	struct sctp_packet *packet = NULL;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *abort;

	packet = FUNC6(net, asoc, chunk);
	if (!packet)
		return SCTP_DISPOSITION_NOMEM;

	/* Make an ABORT. The T bit will be set if the asoc
	 * is NULL.
	 */
	abort = FUNC4(asoc, chunk, 0);
	if (!abort) {
		FUNC5(packet);
		return SCTP_DISPOSITION_NOMEM;
	}

	/* Reflect vtag if T-Bit is set */
	if (FUNC9(abort))
		packet->vtag = FUNC2(chunk->sctp_hdr->vtag);

	/* Set the skb to the belonging sock for accounting.  */
	abort->skb->sk = ep->base.sk;

	FUNC7(packet, abort);

	FUNC3(commands, SCTP_CMD_SEND_PKT,
			FUNC1(packet));

	FUNC0(net, SCTP_MIB_OUTCTRLCHUNKS);

	FUNC8(net, ep, asoc, type, arg, commands);
	return SCTP_DISPOSITION_CONSUME;
}