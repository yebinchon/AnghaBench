#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sctp_ulpevent {int dummy; } ;
struct sctp_init_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_9__ {TYPE_2__* cookie_hdr; } ;
struct sctp_chunk {TYPE_4__* chunk_hdr; TYPE_3__ subh; } ;
struct TYPE_12__ {int /*<<< orphan*/  sk; } ;
struct TYPE_11__ {int /*<<< orphan*/  sinit_max_instreams; int /*<<< orphan*/  sinit_num_ostreams; } ;
struct sctp_association {TYPE_6__ base; TYPE_5__ c; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {struct sctp_init_chunk* peer_init; } ;
struct TYPE_8__ {TYPE_1__ c; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_PURGE_ASCONF_QUEUE ; 
 int /*<<< orphan*/  SCTP_CMD_PURGE_OUTQUEUE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_T3_RTX_TIMERS_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_UPDATE_ASSOC ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_DISCARD ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_ERROR_COOKIE_IN_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_SACK ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T4_RTO ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SCTP_RESTART ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  SHUTDOWN_ACK_SENT ; 
 int /*<<< orphan*/  SHUTDOWN_PENDING ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sctp_association*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct sctp_chunk*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC11 (struct sctp_association*,struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC12 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,struct sctp_init_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_association*,struct sctp_association const*,struct sctp_chunk*,struct sctp_cmd_seq*) ; 
 int FUNC15 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/ ,struct sctp_chunk*,struct sctp_cmd_seq*) ; 
 int FUNC16 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_chunk*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct sctp_association const*,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC20 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum sctp_disposition FUNC22(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					struct sctp_chunk *chunk,
					struct sctp_cmd_seq *commands,
					struct sctp_association *new_asoc)
{
	struct sctp_init_chunk *peer_init;
	enum sctp_disposition disposition;
	struct sctp_ulpevent *ev;
	struct sctp_chunk *repl;
	struct sctp_chunk *err;

	/* new_asoc is a brand-new association, so these are not yet
	 * side effects--it is safe to run them here.
	 */
	peer_init = &chunk->subh.cookie_hdr->c.peer_init[0];

	if (!FUNC13(new_asoc, chunk, FUNC17(chunk), peer_init,
			       GFP_ATOMIC))
		goto nomem;

	if (FUNC8(new_asoc, GFP_ATOMIC))
		goto nomem;

	if (!FUNC9(net, chunk, new_asoc))
		return SCTP_DISPOSITION_DISCARD;

	/* Make sure no new addresses are being added during the
	 * restart.  Though this is a pretty complicated attack
	 * since you'd have to get inside the cookie.
	 */
	if (!FUNC14(new_asoc, asoc, chunk, commands))
		return SCTP_DISPOSITION_CONSUME;

	/* If the endpoint is in the SHUTDOWN-ACK-SENT state and recognizes
	 * the peer has restarted (Action A), it MUST NOT setup a new
	 * association but instead resend the SHUTDOWN ACK and send an ERROR
	 * chunk with a "Cookie Received while Shutting Down" error cause to
	 * its peer.
	*/
	if (FUNC19(asoc, SHUTDOWN_ACK_SENT)) {
		disposition = FUNC15(net, ep, asoc,
				FUNC4(chunk->chunk_hdr->type),
				chunk, commands);
		if (SCTP_DISPOSITION_NOMEM == disposition)
			goto nomem;

		err = FUNC12(asoc, chunk,
					 SCTP_ERROR_COOKIE_IN_SHUTDOWN,
					 NULL, 0, 0);
		if (err)
			FUNC7(commands, SCTP_CMD_REPLY,
					FUNC1(err));

		return SCTP_DISPOSITION_CONSUME;
	}

	/* For now, stop pending T3-rtx and SACK timers, fail any unsent/unacked
	 * data. Consider the optional choice of resending of this data.
	 */
	FUNC7(commands, SCTP_CMD_T3_RTX_TIMERS_STOP, FUNC2());
	FUNC7(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_SACK));
	FUNC7(commands, SCTP_CMD_PURGE_OUTQUEUE, FUNC2());

	/* Stop pending T4-rto timer, teardown ASCONF queue, ASCONF-ACK queue
	 * and ASCONF-ACK cache.
	 */
	FUNC7(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_T4_RTO));
	FUNC7(commands, SCTP_CMD_PURGE_ASCONF_QUEUE, FUNC2());

	repl = FUNC11(new_asoc, chunk);
	if (!repl)
		goto nomem;

	/* Report association restart to upper layer. */
	ev = FUNC20(asoc, 0, SCTP_RESTART, 0,
					     new_asoc->c.sinit_num_ostreams,
					     new_asoc->c.sinit_max_instreams,
					     NULL, GFP_ATOMIC);
	if (!ev)
		goto nomem_ev;

	/* Update the content of current association. */
	FUNC7(commands, SCTP_CMD_UPDATE_ASSOC, FUNC0(new_asoc));
	FUNC7(commands, SCTP_CMD_EVENT_ULP, FUNC6(ev));
	if (FUNC19(asoc, SHUTDOWN_PENDING) &&
	    (FUNC18(asoc->base.sk, CLOSING) ||
	     FUNC21(asoc->base.sk, SOCK_DEAD))) {
		/* if were currently in SHUTDOWN_PENDING, but the socket
		 * has been closed by user, don't transition to ESTABLISHED.
		 * Instead trigger SHUTDOWN bundled with COOKIE_ACK.
		 */
		FUNC7(commands, SCTP_CMD_REPLY, FUNC1(repl));
		return FUNC16(net, ep, asoc,
						     FUNC4(0), NULL,
						     commands);
	} else {
		FUNC7(commands, SCTP_CMD_NEW_STATE,
				FUNC3(SCTP_STATE_ESTABLISHED));
		FUNC7(commands, SCTP_CMD_REPLY, FUNC1(repl));
	}
	return SCTP_DISPOSITION_CONSUME;

nomem_ev:
	FUNC10(repl);
nomem:
	return SCTP_DISPOSITION_NOMEM;
}