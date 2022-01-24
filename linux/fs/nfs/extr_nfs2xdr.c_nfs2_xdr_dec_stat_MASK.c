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
typedef  enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;

/* Variables and functions */
 int NFS_OK ; 
 int FUNC0 (struct xdr_stream*,int*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rpc_rqst *req, struct xdr_stream *xdr,
			     void *__unused)
{
	enum nfs_stat status;
	int error;

	error = FUNC0(xdr, &status);
	if (FUNC2(error))
		goto out;
	if (status != NFS_OK)
		goto out_default;
out:
	return error;
out_default:
	return FUNC1(status);
}