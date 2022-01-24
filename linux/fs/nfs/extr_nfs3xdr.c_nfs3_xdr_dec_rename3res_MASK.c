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
struct user_namespace {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_renameres {int /*<<< orphan*/  new_fattr; int /*<<< orphan*/  old_fattr; } ;
typedef  enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;

/* Variables and functions */
 int NFS3_OK ; 
 int FUNC0 (struct xdr_stream*,int*) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,struct user_namespace*) ; 
 int FUNC2 (int) ; 
 struct user_namespace* FUNC3 (struct rpc_rqst*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct rpc_rqst *req,
				   struct xdr_stream *xdr,
				   void *data)
{
	struct user_namespace *userns = FUNC3(req);
	struct nfs_renameres *result = data;
	enum nfs_stat status;
	int error;

	error = FUNC0(xdr, &status);
	if (FUNC4(error))
		goto out;
	error = FUNC1(xdr, result->old_fattr, userns);
	if (FUNC4(error))
		goto out;
	error = FUNC1(xdr, result->new_fattr, userns);
	if (FUNC4(error))
		goto out;
	if (status != NFS3_OK)
		goto out_status;
out:
	return error;
out_status:
	return FUNC2(status);
}