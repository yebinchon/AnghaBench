#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_paramhdr {int /*<<< orphan*/  length; } ;
struct sctp_heartbeathdr {int dummy; } ;
struct sctp_heartbeat_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_4__ {struct sctp_heartbeathdr* hb_hdr; } ;
struct sctp_chunk {TYPE_3__* skb; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_NOMEM ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association const*,struct sctp_chunk*,struct sctp_paramhdr*,size_t) ; 
 int FUNC6 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC7 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC8 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_paramhdr*,struct sctp_cmd_seq*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_chunk*,struct sctp_association const*) ; 

enum sctp_disposition FUNC10(struct net *net,
				       const struct sctp_endpoint *ep,
				       const struct sctp_association *asoc,
				       const union sctp_subtype type,
				       void *arg, struct sctp_cmd_seq *commands)
{
	struct sctp_paramhdr *param_hdr;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *reply;
	size_t paylen = 0;

	if (!FUNC9(chunk, asoc))
		return FUNC6(net, ep, asoc, type, arg, commands);

	/* Make sure that the HEARTBEAT chunk has a valid length. */
	if (!FUNC4(chunk,
				     sizeof(struct sctp_heartbeat_chunk)))
		return FUNC7(net, ep, asoc, type, arg,
						  commands);

	/* 8.3 The receiver of the HEARTBEAT should immediately
	 * respond with a HEARTBEAT ACK that contains the Heartbeat
	 * Information field copied from the received HEARTBEAT chunk.
	 */
	chunk->subh.hb_hdr = (struct sctp_heartbeathdr *)chunk->skb->data;
	param_hdr = (struct sctp_paramhdr *)chunk->subh.hb_hdr;
	paylen = FUNC1(chunk->chunk_hdr->length) - sizeof(struct sctp_chunkhdr);

	if (FUNC1(param_hdr->length) > paylen)
		return FUNC8(net, ep, asoc, type, arg,
						  param_hdr, commands);

	if (!FUNC2(chunk->skb, paylen))
		goto nomem;

	reply = FUNC5(asoc, chunk, param_hdr, paylen);
	if (!reply)
		goto nomem;

	FUNC3(commands, SCTP_CMD_REPLY, FUNC0(reply));
	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}