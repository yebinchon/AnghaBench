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
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_stateid; } ;
struct nfsd4_copy {TYPE_1__ cp_res; } ;
struct nfs4_cb_compound_hdr {int /*<<< orphan*/  nops; } ;
struct knfsd_fh {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CB_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct knfsd_fh const*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,struct nfsd4_copy const*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr,
				   __be32 nfserr,
				   const struct knfsd_fh *fh,
				   const struct nfsd4_copy *cp,
				   struct nfs4_cb_compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC4(xdr, 4);
	*p++ = FUNC0(OP_CB_OFFLOAD);
	FUNC1(xdr, fh);
	FUNC3(xdr, &cp->cp_res.cb_stateid);
	FUNC2(xdr, nfserr, cp);

	hdr->nops++;
}