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
struct nfs_openres {scalar_t__ lg_res; int /*<<< orphan*/  server; int /*<<< orphan*/  f_label; int /*<<< orphan*/  f_attr; int /*<<< orphan*/  access_result; int /*<<< orphan*/  access_supported; scalar_t__ access_request; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,struct rpc_rqst*,scalar_t__) ; 
 int FUNC5 (struct xdr_stream*,struct nfs_openres*) ; 
 int FUNC6 (struct xdr_stream*) ; 
 int FUNC7 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 

__attribute__((used)) static int FUNC8(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
			     void *data)
{
	struct nfs_openres *res = data;
	struct compound_hdr hdr;
	int status;

	status = FUNC1(xdr, &hdr);
	if (status)
		goto out;
	status = FUNC7(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC6(xdr);
	if (status)
		goto out;
	status = FUNC5(xdr, res);
	if (status)
		goto out;
	status = FUNC3(xdr, &res->fh);
	if (status)
		goto out;
	if (res->access_request)
		FUNC0(xdr, &res->access_supported, &res->access_result);
	FUNC2(xdr, res->f_attr, res->f_label, res->server);
	if (res->lg_res)
		FUNC4(xdr, rqstp, res->lg_res);
out:
	return status;
}