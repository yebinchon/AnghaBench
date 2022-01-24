#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_shutdown_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__* timeouts; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_HB_TIMERS_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SETUP_T2 ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_RESTART ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_NOMEM ; 
 size_t SCTP_EVENT_TIMEOUT_AUTOCLOSE ; 
 size_t SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_SHUTDOWN_ACK_SENT ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC6 (struct sctp_association const*,struct sctp_chunk*) ; 
 int FUNC7 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC8 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_chunk*,struct sctp_association const*) ; 

enum sctp_disposition FUNC10(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *reply;

	/* There are 2 ways of getting here:
	 *    1) called in response to a SHUTDOWN chunk
	 *    2) called when SCTP_EVENT_NO_PENDING_TSN event is issued.
	 *
	 * For the case (2), the arg parameter is set to NULL.  We need
	 * to check that we have a chunk before accessing it's fields.
	 */
	if (chunk) {
		if (!FUNC9(chunk, asoc))
			return FUNC7(net, ep, asoc, type, arg,
						commands);

		/* Make sure that the SHUTDOWN chunk has a valid length. */
		if (!FUNC5(
				chunk, sizeof(struct sctp_shutdown_chunk)))
			return FUNC8(net, ep, asoc, type,
							  arg, commands);
	}

	/* If it has no more outstanding DATA chunks, the SHUTDOWN receiver
	 * shall send a SHUTDOWN ACK ...
	 */
	reply = FUNC6(asoc, chunk);
	if (!reply)
		goto nomem;

	/* Set the transport for the SHUTDOWN ACK chunk and the timeout for
	 * the T2-shutdown timer.
	 */
	FUNC4(commands, SCTP_CMD_SETUP_T2, FUNC0(reply));

	/* and start/restart a T2-shutdown timer of its own, */
	FUNC4(commands, SCTP_CMD_TIMER_RESTART,
			FUNC3(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

	if (asoc->timeouts[SCTP_EVENT_TIMEOUT_AUTOCLOSE])
		FUNC4(commands, SCTP_CMD_TIMER_STOP,
				FUNC3(SCTP_EVENT_TIMEOUT_AUTOCLOSE));

	/* Enter the SHUTDOWN-ACK-SENT state.  */
	FUNC4(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_SHUTDOWN_ACK_SENT));

	/* sctp-implguide 2.10 Issues with Heartbeating and failover
	 *
	 * HEARTBEAT ... is discontinued after sending either SHUTDOWN
	 * or SHUTDOWN-ACK.
	 */
	FUNC4(commands, SCTP_CMD_HB_TIMERS_STOP, FUNC1());

	FUNC4(commands, SCTP_CMD_REPLY, FUNC0(reply));

	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}