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
struct nfs4_cb_compound_hdr {int /*<<< orphan*/  nops; void** nops_p; int /*<<< orphan*/  ident; int /*<<< orphan*/  minorversion; } ;
typedef  void* __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void** FUNC1 (void**) ; 
 void** FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr,
				    struct nfs4_cb_compound_hdr *hdr)
{
	__be32 * p;

	p = FUNC2(xdr, 4 + 4 + 4 + 4);
	p = FUNC1(p);		/* empty tag */
	*p++ = FUNC0(hdr->minorversion);
	*p++ = FUNC0(hdr->ident);

	hdr->nops_p = p;
	*p = FUNC0(hdr->nops);		/* argarray element count */
}