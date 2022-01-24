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
struct nfs_pgio_res {int count; int /*<<< orphan*/  server; scalar_t__ fattr; int /*<<< orphan*/  seq_res; int /*<<< orphan*/  op_status; } ;
struct compound_hdr {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 
 int FUNC4 (struct xdr_stream*,struct nfs_pgio_res*) ; 

__attribute__((used)) static int FUNC5(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
			      void *data)
{
	struct nfs_pgio_res *res = data;
	struct compound_hdr hdr;
	int status;

	status = FUNC0(xdr, &hdr);
	res->op_status = hdr.status;
	if (status)
		goto out;
	status = FUNC3(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC2(xdr);
	if (status)
		goto out;
	status = FUNC4(xdr, res);
	if (status)
		goto out;
	if (res->fattr)
		FUNC1(xdr, res->fattr, res->server);
	if (!status)
		status = res->count;
out:
	return status;
}