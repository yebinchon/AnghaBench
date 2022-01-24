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
struct nfs_fsinfo {int /*<<< orphan*/  fattr; } ;
typedef  enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;

/* Variables and functions */
 int NFS3_OK ; 
 int FUNC0 (struct xdr_stream*,struct nfs_fsinfo*) ; 
 int FUNC1 (struct xdr_stream*,int*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_rqst*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *req,
				   struct xdr_stream *xdr,
				   void *data)
{
	struct nfs_fsinfo *result = data;
	enum nfs_stat status;
	int error;

	error = FUNC1(xdr, &status);
	if (FUNC5(error))
		goto out;
	error = FUNC2(xdr, result->fattr, FUNC4(req));
	if (FUNC5(error))
		goto out;
	if (status != NFS3_OK)
		goto out_status;
	error = FUNC0(xdr, result);
out:
	return error;
out_status:
	return FUNC3(status);
}