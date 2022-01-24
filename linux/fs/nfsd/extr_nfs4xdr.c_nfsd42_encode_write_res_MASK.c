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
struct nfsd4_compoundres {int /*<<< orphan*/  xdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd42_write_res {int wr_stable_how; TYPE_1__ wr_verifier; int /*<<< orphan*/  wr_bytes_written; int /*<<< orphan*/  cb_stateid; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFS4_VERIFIER_SIZE ; 
 void* FUNC0 (int) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ nfserr_resource ; 
 scalar_t__* FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __be32
FUNC5(struct nfsd4_compoundres *resp,
		struct nfsd42_write_res *write, bool sync)
{
	__be32 *p;
	p = FUNC4(&resp->xdr, 4);
	if (!p)
		return nfserr_resource;

	if (sync)
		*p++ = FUNC0(0);
	else {
		__be32 nfserr;
		*p++ = FUNC0(1);
		nfserr = FUNC1(&resp->xdr, &write->cb_stateid);
		if (nfserr)
			return nfserr;
	}
	p = FUNC4(&resp->xdr, 8 + 4 + NFS4_VERIFIER_SIZE);
	if (!p)
		return nfserr_resource;

	p = FUNC2(p, write->wr_bytes_written);
	*p++ = FUNC0(write->wr_stable_how);
	p = FUNC3(p, write->wr_verifier.data,
				    NFS4_VERIFIER_SIZE);
	return nfs_ok;
}