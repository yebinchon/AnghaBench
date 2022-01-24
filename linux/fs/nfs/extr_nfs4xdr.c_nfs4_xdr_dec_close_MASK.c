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
struct nfs_closeres {int lr_ret; int /*<<< orphan*/  server; int /*<<< orphan*/ * fattr; scalar_t__ lr_res; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct nfs_closeres*) ; 
 int FUNC1 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xdr_stream*,scalar_t__) ; 
 int FUNC4 (struct xdr_stream*) ; 
 int FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
			      void *data)
{
	struct nfs_closeres *res = data;
	struct compound_hdr hdr;
	int status;

	status = FUNC1(xdr, &hdr);
	if (status)
		goto out;
	status = FUNC5(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC4(xdr);
	if (status)
		goto out;
	if (res->lr_res) {
		status = FUNC3(xdr, res->lr_res);
		res->lr_ret = status;
		if (status)
			goto out;
	}
	if (res->fattr != NULL) {
		status = FUNC2(xdr, res->fattr, res->server);
		if (status != 0)
			goto out;
	}
	status = FUNC0(xdr, res);
out:
	return status;
}