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
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_RTO_PENDING ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association const*,struct sctp_transport*) ; 

__attribute__((used)) static enum sctp_disposition FUNC4(
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	struct sctp_transport *transport = (struct sctp_transport *) arg;
	struct sctp_chunk *reply;

	/* Send a heartbeat to our peer.  */
	reply = FUNC3(asoc, transport);
	if (!reply)
		return SCTP_DISPOSITION_NOMEM;

	/* Set rto_pending indicating that an RTT measurement
	 * is started with this heartbeat chunk.
	 */
	FUNC2(commands, SCTP_CMD_RTO_PENDING,
			FUNC1(transport));

	FUNC2(commands, SCTP_CMD_REPLY, FUNC0(reply));
	return SCTP_DISPOSITION_CONSUME;
}