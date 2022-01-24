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
struct sctp_operr_chunk {int dummy; } ;
struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {scalar_t__ chunk_end; int /*<<< orphan*/  chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_PROCESS_OPERR ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int) ; 
 int FUNC3 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC4 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC5 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,void*,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_errhdr*,int /*<<< orphan*/ ) ; 

enum sctp_disposition FUNC8(struct net *net,
					   const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const union sctp_subtype type,
					   void *arg,
					   struct sctp_cmd_seq *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_errhdr *err;

	if (!FUNC6(chunk, asoc))
		return FUNC3(net, ep, asoc, type, arg, commands);

	/* Make sure that the ERROR chunk has a valid length. */
	if (!FUNC2(chunk, sizeof(struct sctp_operr_chunk)))
		return FUNC4(net, ep, asoc, type, arg,
						  commands);
	FUNC7(err, chunk->chunk_hdr);
	if ((void *)err != (void *)chunk->chunk_end)
		return FUNC5(net, ep, asoc, type, arg,
						  (void *)err, commands);

	FUNC1(commands, SCTP_CMD_PROCESS_OPERR,
			FUNC0(chunk));

	return SCTP_DISPOSITION_CONSUME;
}