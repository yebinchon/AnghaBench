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
struct nfs_renameres {int /*<<< orphan*/  new_cinfo; int /*<<< orphan*/  old_cinfo; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC1 (struct xdr_stream*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct xdr_stream*) ; 
 int FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 

__attribute__((used)) static int FUNC5(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
			       void *data)
{
	struct nfs_renameres *res = data;
	struct compound_hdr hdr;
	int status;

	status = FUNC0(xdr, &hdr);
	if (status)
		goto out;
	status = FUNC4(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC1(xdr);
	if (status)
		goto out;
	status = FUNC3(xdr);
	if (status)
		goto out;
	status = FUNC1(xdr);
	if (status)
		goto out;
	status = FUNC2(xdr, &res->old_cinfo, &res->new_cinfo);
out:
	return status;
}