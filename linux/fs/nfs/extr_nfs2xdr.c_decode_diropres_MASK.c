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
struct nfs_diropok {int dummy; } ;
typedef  enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;

/* Variables and functions */
 int NFS_OK ; 
 int FUNC0 (struct xdr_stream*,struct nfs_diropok*,struct user_namespace*) ; 
 int FUNC1 (struct xdr_stream*,int*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct nfs_diropok *result,
		struct user_namespace *userns)
{
	enum nfs_stat status;
	int error;

	error = FUNC1(xdr, &status);
	if (FUNC3(error))
		goto out;
	if (status != NFS_OK)
		goto out_default;
	error = FUNC0(xdr, result, userns);
out:
	return error;
out_default:
	return FUNC2(status);
}