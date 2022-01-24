#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_errhdr {int /*<<< orphan*/  cause; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int /*<<< orphan*/  transport; TYPE_2__* skb; TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct sctp_abort_chunk {int dummy; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int) ; 
 int FUNC2 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ; 
 int FUNC3 (struct net*,struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_association const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,struct sctp_association const*) ; 

enum sctp_disposition FUNC5(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	__be16 error = SCTP_ERROR_NO_ERROR;
	struct sctp_chunk *chunk = arg;
	unsigned int len;

	if (!FUNC4(chunk, asoc))
		return FUNC2(net, ep, asoc, type, arg, commands);

	/* Make sure that the ABORT chunk has a valid length.
	 * Since this is an ABORT chunk, we have to discard it
	 * because of the following text:
	 * RFC 2960, Section 3.3.7
	 *    If an endpoint receives an ABORT with a format error or for an
	 *    association that doesn't exist, it MUST silently discard it.
	 * Because the length is "invalid", we can't really discard just
	 * as we do not know its true length.  So, to be safe, discard the
	 * packet.
	 */
	if (!FUNC1(chunk, sizeof(struct sctp_abort_chunk)))
		return FUNC2(net, ep, asoc, type, arg, commands);

	/* See if we have an error cause code in the chunk.  */
	len = FUNC0(chunk->chunk_hdr->length);
	if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr))
		error = ((struct sctp_errhdr *)chunk->skb->data)->cause;

	return FUNC3(net, commands, error, ECONNREFUSED, asoc,
				      chunk->transport);
}