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
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SETUP_T2 ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_RESTART ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,struct sctp_chunk*) ; 
 int FUNC5 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 

enum sctp_disposition FUNC6(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *reply;

	/* Make sure that the chunk has a valid length */
	if (!FUNC3(chunk, sizeof(struct sctp_chunkhdr)))
		return FUNC5(net, ep, asoc, type, arg,
						  commands);

	/* Since we are not going to really process this INIT, there
	 * is no point in verifying chunk boundries.  Just generate
	 * the SHUTDOWN ACK.
	 */
	reply = FUNC4(asoc, chunk);
	if (NULL == reply)
		goto nomem;

	/* Set the transport for the SHUTDOWN ACK chunk and the timeout for
	 * the T2-SHUTDOWN timer.
	 */
	FUNC2(commands, SCTP_CMD_SETUP_T2, FUNC0(reply));

	/* and restart the T2-shutdown timer. */
	FUNC2(commands, SCTP_CMD_TIMER_RESTART,
			FUNC1(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

	FUNC2(commands, SCTP_CMD_REPLY, FUNC0(reply));

	return SCTP_DISPOSITION_CONSUME;
nomem:
	return SCTP_DISPOSITION_NOMEM;
}