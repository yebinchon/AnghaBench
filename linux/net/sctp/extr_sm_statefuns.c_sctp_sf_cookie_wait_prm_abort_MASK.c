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
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int SCTP_DISPOSITION_ABORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_USER_ABORT ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum sctp_disposition FUNC7(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *abort = arg;

	/* Stop T1-init timer */
	FUNC6(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_T1_INIT));

	if (abort)
		FUNC6(commands, SCTP_CMD_REPLY, FUNC0(abort));

	FUNC6(commands, SCTP_CMD_NEW_STATE,
			FUNC4(SCTP_STATE_CLOSED));

	FUNC2(net, SCTP_MIB_ABORTEDS);

	/* Even if we can't send the ABORT due to low memory delete the
	 * TCB.  This is a departure from our typical NOMEM handling.
	 */

	FUNC6(commands, SCTP_CMD_SET_SK_ERR,
			FUNC1(ECONNREFUSED));
	/* Delete the established association. */
	FUNC6(commands, SCTP_CMD_INIT_FAILED,
			FUNC3(SCTP_ERROR_USER_ABORT));

	return SCTP_DISPOSITION_ABORT;
}