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
struct sctp_endpoint {int dummy; } ;
struct sctp_ecnehdr {int /*<<< orphan*/  lowest_tsn; } ;
struct sctp_ecne_chunk {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_ECN_ECNE ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int) ; 
 int FUNC4 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC5 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

enum sctp_disposition FUNC8(struct net *net,
				      const struct sctp_endpoint *ep,
				      const struct sctp_association *asoc,
				      const union sctp_subtype type,
				      void *arg, struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_ecnehdr *ecne;

	if (!FUNC6(chunk, asoc))
		return FUNC4(net, ep, asoc, type, arg, commands);

	if (!FUNC3(chunk, sizeof(struct sctp_ecne_chunk)))
		return FUNC5(net, ep, asoc, type, arg,
						  commands);

	ecne = (struct sctp_ecnehdr *)chunk->skb->data;
	FUNC7(chunk->skb, sizeof(*ecne));

	/* If this is a newer ECNE than the last CWR packet we sent out */
	FUNC2(commands, SCTP_CMD_ECN_ECNE,
			FUNC0(FUNC1(ecne->lowest_tsn)));

	return SCTP_DISPOSITION_CONSUME;
}