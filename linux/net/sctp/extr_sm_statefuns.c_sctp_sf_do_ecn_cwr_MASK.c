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
typedef  int /*<<< orphan*/  u32 ;
struct sctp_endpoint {int dummy; } ;
struct sctp_ecne_chunk {int dummy; } ;
struct sctp_cwrhdr {int /*<<< orphan*/  lowest_tsn; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_association {int /*<<< orphan*/  last_ecne_tsn; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_ECN_CWR ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,int) ; 
 int FUNC5 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC6 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

enum sctp_disposition FUNC9(struct net *net,
					 const struct sctp_endpoint *ep,
					 const struct sctp_association *asoc,
					 const union sctp_subtype type,
					 void *arg,
					 struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_cwrhdr *cwr;
	u32 lowest_tsn;

	if (!FUNC7(chunk, asoc))
		return FUNC5(net, ep, asoc, type, arg, commands);

	if (!FUNC4(chunk, sizeof(struct sctp_ecne_chunk)))
		return FUNC6(net, ep, asoc, type, arg,
						  commands);

	cwr = (struct sctp_cwrhdr *)chunk->skb->data;
	FUNC8(chunk->skb, sizeof(*cwr));

	lowest_tsn = FUNC2(cwr->lowest_tsn);

	/* Does this CWR ack the last sent congestion notification? */
	if (FUNC1(asoc->last_ecne_tsn, lowest_tsn)) {
		/* Stop sending ECNE. */
		FUNC3(commands,
				SCTP_CMD_ECN_CWR,
				FUNC0(lowest_tsn));
	}
	return SCTP_DISPOSITION_CONSUME;
}