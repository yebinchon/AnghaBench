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
struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int SCTP_DISPOSITION_DELETE_TCB ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_SHUTDOWNS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SCTP_SHUTDOWN_COMP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC9 (struct sctp_association const*,struct sctp_chunk*) ; 
 int FUNC10 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC11 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC13 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_chunk*,struct sctp_association const*) ; 

enum sctp_disposition FUNC15(struct net *net,
					   const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const union sctp_subtype type,
					   void *arg,
					   struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *reply;
	struct sctp_ulpevent *ev;

	if (!FUNC14(chunk, asoc))
		return FUNC10(net, ep, asoc, type, arg, commands);

	/* Make sure that the SHUTDOWN_ACK chunk has a valid length. */
	if (!FUNC8(chunk, sizeof(struct sctp_chunkhdr)))
		return FUNC11(net, ep, asoc, type, arg,
						  commands);
	/* 10.2 H) SHUTDOWN COMPLETE notification
	 *
	 * When SCTP completes the shutdown procedures (section 9.2) this
	 * notification is passed to the upper layer.
	 */
	ev = FUNC13(asoc, 0, SCTP_SHUTDOWN_COMP,
					     0, 0, 0, NULL, GFP_ATOMIC);
	if (!ev)
		goto nomem;

	/* ...send a SHUTDOWN COMPLETE chunk to its peer, */
	reply = FUNC9(asoc, chunk);
	if (!reply)
		goto nomem_chunk;

	/* Do all the commands now (after allocation), so that we
	 * have consistent state if memory allocation failes
	 */
	FUNC7(commands, SCTP_CMD_EVENT_ULP, FUNC6(ev));

	/* Upon the receipt of the SHUTDOWN ACK, the SHUTDOWN sender shall
	 * stop the T2-shutdown timer,
	 */
	FUNC7(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

	FUNC7(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

	FUNC7(commands, SCTP_CMD_NEW_STATE,
			FUNC4(SCTP_STATE_CLOSED));
	FUNC2(net, SCTP_MIB_SHUTDOWNS);
	FUNC1(net, SCTP_MIB_CURRESTAB);
	FUNC7(commands, SCTP_CMD_REPLY, FUNC0(reply));

	/* ...and remove all record of the association. */
	FUNC7(commands, SCTP_CMD_DELETE_TCB, FUNC3());
	return SCTP_DISPOSITION_DELETE_TCB;

nomem_chunk:
	FUNC12(ev);
nomem:
	return SCTP_DISPOSITION_NOMEM;
}