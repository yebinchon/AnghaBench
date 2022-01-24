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
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct compound_hdr {scalar_t__ replen; scalar_t__ taglen; int /*<<< orphan*/  nops; void** nops_p; int /*<<< orphan*/  minorversion; int /*<<< orphan*/  tag; } ;
typedef  void* __be32 ;

/* Variables and functions */
 scalar_t__ NFS4_MAXTAGLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,scalar_t__,int /*<<< orphan*/ ) ; 
 void** FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
				struct rpc_rqst *req,
				struct compound_hdr *hdr)
{
	__be32 *p;

	/* initialize running count of expected bytes in reply.
	 * NOTE: the replied tag SHOULD be the same is the one sent,
	 * but this is not required as a MUST for the server to do so. */
	hdr->replen = 3 + hdr->taglen;

	FUNC0(hdr->taglen > NFS4_MAXTAGLEN);
	FUNC2(xdr, hdr->taglen, hdr->tag);
	p = FUNC3(xdr, 8);
	*p++ = FUNC1(hdr->minorversion);
	hdr->nops_p = p;
	*p = FUNC1(hdr->nops);
}