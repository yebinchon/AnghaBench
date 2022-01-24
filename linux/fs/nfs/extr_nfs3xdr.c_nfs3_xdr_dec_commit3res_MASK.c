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
struct nfs_commitres {int op_status; TYPE_1__* verf; int /*<<< orphan*/  fattr; } ;
typedef  enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;
struct TYPE_2__ {int /*<<< orphan*/  verifier; } ;

/* Variables and functions */
 int NFS3_OK ; 
 int FUNC0 (struct xdr_stream*,int*) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_rqst*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *req,
				   struct xdr_stream *xdr,
				   void *data)
{
	struct nfs_commitres *result = data;
	enum nfs_stat status;
	int error;

	error = FUNC0(xdr, &status);
	if (FUNC5(error))
		goto out;
	error = FUNC1(xdr, result->fattr, FUNC4(req));
	if (FUNC5(error))
		goto out;
	result->op_status = status;
	if (status != NFS3_OK)
		goto out_status;
	error = FUNC2(xdr, &result->verf->verifier);
out:
	return error;
out_status:
	return FUNC3(status);
}