#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_2__ {scalar_t__ zero_window_announced; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; scalar_t__ state; TYPE_1__ peer; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_RETRAN ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_STRIKE ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_START_ONCE ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_T3_RTX_EXPIREDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_PENDING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum sctp_disposition FUNC7(struct net *net,
					   const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const union sctp_subtype type,
					   void *arg,
					   struct sctp_cmd_seq *commands)
{
	struct sctp_transport *transport = arg;

	FUNC2(net, SCTP_MIB_T3_RTX_EXPIREDS);

	if (asoc->overall_error_count >= asoc->max_retrans) {
		if (asoc->peer.zero_window_announced &&
		    asoc->state == SCTP_STATE_SHUTDOWN_PENDING) {
			/*
			 * We are here likely because the receiver had its rwnd
			 * closed for a while and we have not been able to
			 * transmit the locally queued data within the maximum
			 * retransmission attempts limit.  Start the T5
			 * shutdown guard timer to give the receiver one last
			 * chance and some additional time to recover before
			 * aborting.
			 */
			FUNC6(commands, SCTP_CMD_TIMER_START_ONCE,
				FUNC4(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));
		} else {
			FUNC6(commands, SCTP_CMD_SET_SK_ERR,
					FUNC1(ETIMEDOUT));
			/* CMD_ASSOC_FAILED calls CMD_DELETE_TCB. */
			FUNC6(commands, SCTP_CMD_ASSOC_FAILED,
					FUNC3(SCTP_ERROR_NO_ERROR));
			FUNC2(net, SCTP_MIB_ABORTEDS);
			FUNC0(net, SCTP_MIB_CURRESTAB);
			return SCTP_DISPOSITION_DELETE_TCB;
		}
	}

	/* E1) For the destination address for which the timer
	 * expires, adjust its ssthresh with rules defined in Section
	 * 7.2.3 and set the cwnd <- MTU.
	 */

	/* E2) For the destination address for which the timer
	 * expires, set RTO <- RTO * 2 ("back off the timer").  The
	 * maximum value discussed in rule C7 above (RTO.max) may be
	 * used to provide an upper bound to this doubling operation.
	 */

	/* E3) Determine how many of the earliest (i.e., lowest TSN)
	 * outstanding DATA chunks for the address for which the
	 * T3-rtx has expired will fit into a single packet, subject
	 * to the MTU constraint for the path corresponding to the
	 * destination transport address to which the retransmission
	 * is being sent (this may be different from the address for
	 * which the timer expires [see Section 6.4]).  Call this
	 * value K. Bundle and retransmit those K DATA chunks in a
	 * single packet to the destination endpoint.
	 *
	 * Note: Any DATA chunks that were sent to the address for
	 * which the T3-rtx timer expired but did not fit in one MTU
	 * (rule E3 above), should be marked for retransmission and
	 * sent as soon as cwnd allows (normally when a SACK arrives).
	 */

	/* Do some failure management (Section 8.2). */
	FUNC6(commands, SCTP_CMD_STRIKE, FUNC5(transport));

	/* NB: Rules E4 and F1 are implicit in R1.  */
	FUNC6(commands, SCTP_CMD_RETRAN, FUNC5(transport));

	return SCTP_DISPOSITION_CONSUME;
}