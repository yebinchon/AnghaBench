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
struct rpc_rqst {int dummy; } ;
struct TYPE_2__ {scalar_t__ verf; } ;
struct nfs42_copy_res {TYPE_1__ commit_res; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,TYPE_1__*) ; 
 int FUNC1 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC2 (struct xdr_stream*,struct nfs42_copy_res*) ; 
 int FUNC3 (struct xdr_stream*) ; 
 int FUNC4 (struct xdr_stream*) ; 
 int FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *rqstp,
			     struct xdr_stream *xdr,
			     void *data)
{
	struct nfs42_copy_res *res = data;
	struct compound_hdr hdr;
	int status;

	status = FUNC1(xdr, &hdr);
	if (status)
		goto out;
	status = FUNC5(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC3(xdr);
	if (status)
		goto out;
	status = FUNC4(xdr);
	if (status)
		goto out;
	status = FUNC3(xdr);
	if (status)
		goto out;
	status = FUNC2(xdr, res);
	if (status)
		goto out;
	if (res->commit_res.verf)
		status = FUNC0(xdr, &res->commit_res);
out:
	return status;
}