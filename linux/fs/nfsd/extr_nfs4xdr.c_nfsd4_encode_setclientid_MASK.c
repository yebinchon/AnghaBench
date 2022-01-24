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
struct nfsd4_setclientid {int /*<<< orphan*/  se_confirm; int /*<<< orphan*/  se_clientid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFS4_VERIFIER_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_clid_inuse ; 
 scalar_t__ nfserr_resource ; 
 scalar_t__* FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__* FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_setclientid *scd)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;

	if (!nfserr) {
		p = FUNC2(xdr, 8 + NFS4_VERIFIER_SIZE);
		if (!p)
			return nfserr_resource;
		p = FUNC1(p, &scd->se_clientid, 8);
		p = FUNC1(p, &scd->se_confirm,
						NFS4_VERIFIER_SIZE);
	}
	else if (nfserr == nfserr_clid_inuse) {
		p = FUNC2(xdr, 8);
		if (!p)
			return nfserr_resource;
		*p++ = FUNC0(0);
		*p++ = FUNC0(0);
	}
	return nfserr;
}