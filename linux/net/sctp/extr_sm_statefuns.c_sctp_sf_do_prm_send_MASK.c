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
struct sctp_datamsg {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_SEND_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_datamsg*) ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum sctp_disposition FUNC2(struct net *net,
					  const struct sctp_endpoint *ep,
					  const struct sctp_association *asoc,
					  const union sctp_subtype type,
					  void *arg,
					  struct sctp_cmd_seq *commands)
{
	struct sctp_datamsg *msg = arg;

	FUNC1(commands, SCTP_CMD_SEND_MSG, FUNC0(msg));
	return SCTP_DISPOSITION_CONSUME;
}