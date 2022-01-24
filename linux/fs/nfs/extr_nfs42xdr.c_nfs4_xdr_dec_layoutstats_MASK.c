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
struct nfs42_layoutstat_res {int num_dev; int rpc_status; int /*<<< orphan*/  seq_res; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int PNFS_LAYOUTSTATS_MAXDEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct xdr_stream*,struct compound_hdr*) ; 
 int FUNC2 (struct xdr_stream*) ; 
 int FUNC3 (struct xdr_stream*) ; 
 int FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct rpc_rqst*) ; 

__attribute__((used)) static int FUNC5(struct rpc_rqst *rqstp,
				    struct xdr_stream *xdr,
				    void *data)
{
	struct nfs42_layoutstat_res *res = data;
	struct compound_hdr hdr;
	int status, i;

	status = FUNC1(xdr, &hdr);
	if (status)
		goto out;
	status = FUNC4(xdr, &res->seq_res, rqstp);
	if (status)
		goto out;
	status = FUNC3(xdr);
	if (status)
		goto out;
	FUNC0(res->num_dev > PNFS_LAYOUTSTATS_MAXDEV);
	for (i = 0; i < res->num_dev; i++) {
		status = FUNC2(xdr);
		if (status)
			goto out;
	}
out:
	res->rpc_status = status;
	return status;
}