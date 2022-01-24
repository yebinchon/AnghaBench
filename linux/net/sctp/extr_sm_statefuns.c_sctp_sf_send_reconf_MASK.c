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
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; int /*<<< orphan*/  strreset_chunk; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_STRIKE ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

enum sctp_disposition FUNC8(struct net *net,
					  const struct sctp_endpoint *ep,
					  const struct sctp_association *asoc,
					  const union sctp_subtype type,
					  void *arg,
					  struct sctp_cmd_seq *commands)
{
	struct sctp_transport *transport = arg;

	if (asoc->overall_error_count >= asoc->max_retrans) {
		FUNC6(commands, SCTP_CMD_SET_SK_ERR,
				FUNC2(ETIMEDOUT));
		/* CMD_ASSOC_FAILED calls CMD_DELETE_TCB. */
		FUNC6(commands, SCTP_CMD_ASSOC_FAILED,
				FUNC4(SCTP_ERROR_NO_ERROR));
		FUNC3(net, SCTP_MIB_ABORTEDS);
		FUNC1(net, SCTP_MIB_CURRESTAB);
		return SCTP_DISPOSITION_DELETE_TCB;
	}

	FUNC7(asoc->strreset_chunk);
	FUNC6(commands, SCTP_CMD_REPLY,
			FUNC0(asoc->strreset_chunk));
	FUNC6(commands, SCTP_CMD_STRIKE, FUNC5(transport));

	return SCTP_DISPOSITION_CONSUME;
}