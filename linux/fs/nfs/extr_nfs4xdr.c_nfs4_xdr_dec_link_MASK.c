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
struct nfs4_link_res {int /*<<< orphan*/  server; int /*<<< orphan*/  label; int /*<<< orphan*/  fattr; int /*<<< orphan*/  cinfo; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct xdr_stream*) ; 
 int FUNC4 (struct xdr_stream*) ; 
 int FUNC5 (struct xdr_stream*) ; 
 int FUNC6 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 

__attribute__((used)) static int FUNC7(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
			     void *data)
{
	struct nfs4_link_res *res = data;
	struct compound_hdr hdr;
	int status;

	status = FUNC0(xdr, &hdr);
	if (status)
		goto out;
	status = FUNC6(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC3(xdr);
	if (status)
		goto out;
	status = FUNC5(xdr);
	if (status)
		goto out;
	status = FUNC3(xdr);
	if (status)
		goto out;
	status = FUNC2(xdr, &res->cinfo);
	if (status)
		goto out;
	/*
	 * Note order: OP_LINK leaves the directory as the current
	 *             filehandle.
	 */
	status = FUNC4(xdr);
	if (status)
		goto out;
	FUNC1(xdr, res->fattr, res->label, res->server);
out:
	return status;
}