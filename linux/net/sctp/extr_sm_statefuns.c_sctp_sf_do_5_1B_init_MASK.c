#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_unrecognized_param {int dummy; } ;
struct sctp_packet {int dummy; } ;
struct sctp_inithdr {int dummy; } ;
struct sctp_init_chunk {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  v; } ;
struct TYPE_13__ {struct sctp_inithdr* init_hdr; } ;
struct sctp_chunk {TYPE_6__* chunk_hdr; TYPE_7__* skb; TYPE_5__ param_hdr; TYPE_4__ subh; TYPE_2__* sctp_hdr; int /*<<< orphan*/  singleton; } ;
struct sctp_association {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  ctl_sock; } ;
struct net {TYPE_1__ sctp; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_17__ {struct sctp_endpoint const* ep; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {scalar_t__ vtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_ASOC ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_DELETE_TCB ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  SCTP_MIB_OUTOFBLUES ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_packet*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct sctp_packet* FUNC6 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_chunk*,int,struct sctp_unrecognized_param*) ; 
 scalar_t__ FUNC9 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC13 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,int) ; 
 struct sctp_association* FUNC14 (struct sctp_endpoint const*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,struct sctp_init_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC18 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 TYPE_9__* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sctp_chunk*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/ ,struct sctp_init_chunk*,struct sctp_chunk*,struct sctp_chunk**) ; 
 scalar_t__ FUNC23 (struct sctp_endpoint*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,int) ; 

enum sctp_disposition FUNC25(struct net *net,
					   const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const union sctp_subtype type,
					   void *arg,
					   struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg, *repl, *err_chunk;
	struct sctp_unrecognized_param *unk_param;
	struct sctp_association *new_asoc;
	struct sctp_packet *packet;
	int len;

	/* Update socket peer label if first association. */
	if (FUNC23((struct sctp_endpoint *)ep,
					chunk->skb))
		return FUNC17(net, ep, asoc, type, arg, commands);

	/* 6.10 Bundling
	 * An endpoint MUST NOT bundle INIT, INIT ACK or
	 * SHUTDOWN COMPLETE with any other chunks.
	 *
	 * IG Section 2.11.2
	 * Furthermore, we require that the receiver of an INIT chunk MUST
	 * enforce these rules by silently discarding an arriving packet
	 * with an INIT chunk that is bundled with other chunks.
	 */
	if (!chunk->singleton)
		return FUNC17(net, ep, asoc, type, arg, commands);

	/* If the packet is an OOTB packet which is temporarily on the
	 * control endpoint, respond with an ABORT.
	 */
	if (ep == FUNC19(net->sctp.ctl_sock)->ep) {
		FUNC2(net, SCTP_MIB_OUTOFBLUES);
		return FUNC18(net, ep, asoc, type, arg, commands);
	}

	/* 3.1 A packet containing an INIT chunk MUST have a zero Verification
	 * Tag.
	 */
	if (chunk->sctp_hdr->vtag != 0)
		return FUNC18(net, ep, asoc, type, arg, commands);

	/* Make sure that the INIT chunk has a valid length.
	 * Normally, this would cause an ABORT with a Protocol Violation
	 * error, but since we don't have an association, we'll
	 * just discard the packet.
	 */
	if (!FUNC12(chunk, sizeof(struct sctp_init_chunk)))
		return FUNC17(net, ep, asoc, type, arg, commands);

	/* If the INIT is coming toward a closing socket, we'll send back
	 * and ABORT.  Essentially, this catches the race of INIT being
	 * backloged to the socket at the same time as the user isses close().
	 * Since the socket and all its associations are going away, we
	 * can treat this OOTB
	 */
	if (FUNC21(ep->base.sk, CLOSING))
		return FUNC18(net, ep, asoc, type, arg, commands);

	/* Verify the INIT chunk before processing it. */
	err_chunk = NULL;
	if (!FUNC22(net, ep, asoc, chunk->chunk_hdr->type,
			      (struct sctp_init_chunk *)chunk->chunk_hdr, chunk,
			      &err_chunk)) {
		/* This chunk contains fatal error. It is to be discarded.
		 * Send an ABORT, with causes if there is any.
		 */
		if (err_chunk) {
			packet = FUNC6(net, ep, asoc, arg,
					(__u8 *)(err_chunk->chunk_hdr) +
					sizeof(struct sctp_chunkhdr),
					FUNC5(err_chunk->chunk_hdr->length) -
					sizeof(struct sctp_chunkhdr));

			FUNC11(err_chunk);

			if (packet) {
				FUNC7(commands, SCTP_CMD_SEND_PKT,
						FUNC4(packet));
				FUNC2(net, SCTP_MIB_OUTCTRLCHUNKS);
				return SCTP_DISPOSITION_CONSUME;
			} else {
				return SCTP_DISPOSITION_NOMEM;
			}
		} else {
			return FUNC18(net, ep, asoc, type, arg,
						    commands);
		}
	}

	/* Grab the INIT header.  */
	chunk->subh.init_hdr = (struct sctp_inithdr *)chunk->skb->data;

	/* Tag the variable length parameters.  */
	chunk->param_hdr.v = FUNC24(chunk->skb, sizeof(struct sctp_inithdr));

	new_asoc = FUNC14(ep, chunk, GFP_ATOMIC);
	if (!new_asoc)
		goto nomem;

	if (FUNC9(new_asoc,
					     FUNC16(FUNC20(chunk)),
					     GFP_ATOMIC) < 0)
		goto nomem_init;

	/* The call, sctp_process_init(), can fail on memory allocation.  */
	if (!FUNC15(new_asoc, chunk, FUNC20(chunk),
			       (struct sctp_init_chunk *)chunk->chunk_hdr,
			       GFP_ATOMIC))
		goto nomem_init;

	/* B) "Z" shall respond immediately with an INIT ACK chunk.  */

	/* If there are errors need to be reported for unknown parameters,
	 * make sure to reserve enough room in the INIT ACK for them.
	 */
	len = 0;
	if (err_chunk)
		len = FUNC5(err_chunk->chunk_hdr->length) -
		      sizeof(struct sctp_chunkhdr);

	repl = FUNC13(new_asoc, chunk, GFP_ATOMIC, len);
	if (!repl)
		goto nomem_init;

	/* If there are errors need to be reported for unknown parameters,
	 * include them in the outgoing INIT ACK as "Unrecognized parameter"
	 * parameter.
	 */
	if (err_chunk) {
		/* Get the "Unrecognized parameter" parameter(s) out of the
		 * ERROR chunk generated by sctp_verify_init(). Since the
		 * error cause code for "unknown parameter" and the
		 * "Unrecognized parameter" type is the same, we can
		 * construct the parameters in INIT ACK by copying the
		 * ERROR causes over.
		 */
		unk_param = (struct sctp_unrecognized_param *)
			    ((__u8 *)(err_chunk->chunk_hdr) +
			    sizeof(struct sctp_chunkhdr));
		/* Replace the cause code with the "Unrecognized parameter"
		 * parameter type.
		 */
		FUNC8(repl, len, unk_param);
		FUNC11(err_chunk);
	}

	FUNC7(commands, SCTP_CMD_NEW_ASOC, FUNC0(new_asoc));

	FUNC7(commands, SCTP_CMD_REPLY, FUNC1(repl));

	/*
	 * Note:  After sending out INIT ACK with the State Cookie parameter,
	 * "Z" MUST NOT allocate any resources, nor keep any states for the
	 * new association.  Otherwise, "Z" will be vulnerable to resource
	 * attacks.
	 */
	FUNC7(commands, SCTP_CMD_DELETE_TCB, FUNC3());

	return SCTP_DISPOSITION_DELETE_TCB;

nomem_init:
	FUNC10(new_asoc);
nomem:
	if (err_chunk)
		FUNC11(err_chunk);
	return SCTP_DISPOSITION_NOMEM;
}