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
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_packet {int dummy; } ;
struct sctp_inithdr {int dummy; } ;
struct sctp_initack_chunk {int dummy; } ;
struct sctp_init_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  v; } ;
struct TYPE_5__ {struct sctp_inithdr* init_hdr; } ;
struct sctp_chunk {TYPE_3__* chunk_hdr; TYPE_4__* skb; TYPE_2__ param_hdr; int /*<<< orphan*/  transport; TYPE_1__ subh; int /*<<< orphan*/  singleton; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_error { ____Placeholder_sctp_error } sctp_error ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CID_ABORT ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_SHKEY ; 
 int /*<<< orphan*/  SCTP_CMD_GEN_COOKIE_ECHO ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_COUNTER_RESET ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_PEER_INIT ; 
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_START ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_ERROR_INV_PARAM ; 
 int SCTP_ERROR_NO_RESOURCE ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_COOKIE ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_init_chunk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_COOKIE_ECHOED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct sctp_packet* FUNC8 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_chunk*,int) ; 
 int FUNC13 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC14 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC15 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC16 (struct net*,struct sctp_cmd_seq*,int,int /*<<< orphan*/ ,struct sctp_association const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/ ,struct sctp_init_chunk*,struct sctp_chunk*,struct sctp_chunk**) ; 
 int /*<<< orphan*/  FUNC18 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 

enum sctp_disposition FUNC20(struct net *net,
					  const struct sctp_endpoint *ep,
					  const struct sctp_association *asoc,
					  const union sctp_subtype type,
					  void *arg,
					  struct sctp_cmd_seq *commands)
{
	struct sctp_init_chunk *initchunk;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *err_chunk;
	struct sctp_packet *packet;

	if (!FUNC18(chunk, asoc))
		return FUNC13(net, ep, asoc, type, arg, commands);

	/* 6.10 Bundling
	 * An endpoint MUST NOT bundle INIT, INIT ACK or
	 * SHUTDOWN COMPLETE with any other chunks.
	 */
	if (!chunk->singleton)
		return FUNC14(net, ep, asoc, type, arg, commands);

	/* Make sure that the INIT-ACK chunk has a valid length */
	if (!FUNC12(chunk, sizeof(struct sctp_initack_chunk)))
		return FUNC15(net, ep, asoc, type, arg,
						  commands);
	/* Grab the INIT header.  */
	chunk->subh.init_hdr = (struct sctp_inithdr *)chunk->skb->data;

	/* Verify the INIT chunk before processing it. */
	err_chunk = NULL;
	if (!FUNC17(net, ep, asoc, chunk->chunk_hdr->type,
			      (struct sctp_init_chunk *)chunk->chunk_hdr, chunk,
			      &err_chunk)) {

		enum sctp_error error = SCTP_ERROR_NO_RESOURCE;

		/* This chunk contains fatal error. It is to be discarded.
		 * Send an ABORT, with causes.  If there are no causes,
		 * then there wasn't enough memory.  Just terminate
		 * the association.
		 */
		if (err_chunk) {
			packet = FUNC8(net, ep, asoc, arg,
					(__u8 *)(err_chunk->chunk_hdr) +
					sizeof(struct sctp_chunkhdr),
					FUNC7(err_chunk->chunk_hdr->length) -
					sizeof(struct sctp_chunkhdr));

			FUNC11(err_chunk);

			if (packet) {
				FUNC9(commands, SCTP_CMD_SEND_PKT,
						FUNC3(packet));
				FUNC1(net, SCTP_MIB_OUTCTRLCHUNKS);
				error = SCTP_ERROR_INV_PARAM;
			}
		}

		/* SCTP-AUTH, Section 6.3:
		 *    It should be noted that if the receiver wants to tear
		 *    down an association in an authenticated way only, the
		 *    handling of malformed packets should not result in
		 *    tearing down the association.
		 *
		 * This means that if we only want to abort associations
		 * in an authenticated way (i.e AUTH+ABORT), then we
		 * can't destroy this association just because the packet
		 * was malformed.
		 */
		if (FUNC10(SCTP_CID_ABORT, asoc))
			return FUNC13(net, ep, asoc, type, arg, commands);

		FUNC1(net, SCTP_MIB_ABORTEDS);
		return FUNC16(net, commands, error, ECONNREFUSED,
						asoc, chunk->transport);
	}

	/* Tag the variable length parameters.  Note that we never
	 * convert the parameters in an INIT chunk.
	 */
	chunk->param_hdr.v = FUNC19(chunk->skb, sizeof(struct sctp_inithdr));

	initchunk = (struct sctp_init_chunk *)chunk->chunk_hdr;

	FUNC9(commands, SCTP_CMD_PEER_INIT,
			FUNC4(initchunk));

	/* Reset init error count upon receipt of INIT-ACK.  */
	FUNC9(commands, SCTP_CMD_INIT_COUNTER_RESET, FUNC2());

	/* 5.1 C) "A" shall stop the T1-init timer and leave
	 * COOKIE-WAIT state.  "A" shall then ... start the T1-cookie
	 * timer, and enter the COOKIE-ECHOED state.
	 */
	FUNC9(commands, SCTP_CMD_TIMER_STOP,
			FUNC6(SCTP_EVENT_TIMEOUT_T1_INIT));
	FUNC9(commands, SCTP_CMD_TIMER_START,
			FUNC6(SCTP_EVENT_TIMEOUT_T1_COOKIE));
	FUNC9(commands, SCTP_CMD_NEW_STATE,
			FUNC5(SCTP_STATE_COOKIE_ECHOED));

	/* SCTP-AUTH: genereate the assocition shared keys so that
	 * we can potentially signe the COOKIE-ECHO.
	 */
	FUNC9(commands, SCTP_CMD_ASSOC_SHKEY, FUNC2());

	/* 5.1 C) "A" shall then send the State Cookie received in the
	 * INIT ACK chunk in a COOKIE ECHO chunk, ...
	 */
	/* If there is any errors to report, send the ERROR chunk generated
	 * for unknown parameters as well.
	 */
	FUNC9(commands, SCTP_CMD_GEN_COOKIE_ECHO,
			FUNC0(err_chunk));

	return SCTP_DISPOSITION_CONSUME;
}