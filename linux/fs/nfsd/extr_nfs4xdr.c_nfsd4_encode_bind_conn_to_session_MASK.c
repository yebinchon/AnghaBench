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
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd4_bind_conn_to_session {int /*<<< orphan*/  dir; TYPE_1__ sessionid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NFS4_MAX_SESSIONID_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static __be32 FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_bind_conn_to_session *bcts)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;

	p = FUNC2(xdr, NFS4_MAX_SESSIONID_LEN + 8);
	if (!p)
		return nfserr_resource;
	p = FUNC1(p, bcts->sessionid.data,
					NFS4_MAX_SESSIONID_LEN);
	*p++ = FUNC0(bcts->dir);
	/* Upshifting from TCP to RDMA is not supported */
	*p++ = FUNC0(0);
	return 0;
}