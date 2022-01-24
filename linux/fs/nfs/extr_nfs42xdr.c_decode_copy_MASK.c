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
struct nfs42_copy_res {int /*<<< orphan*/  write_res; } ;

/* Variables and functions */
 int NFS4ERR_OFFLOAD_NO_REQS ; 
 int /*<<< orphan*/  OP_COPY ; 
 int FUNC0 (struct xdr_stream*,struct nfs42_copy_res*) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, struct nfs42_copy_res *res)
{
	int status;

	status = FUNC1(xdr, OP_COPY);
	if (status == NFS4ERR_OFFLOAD_NO_REQS) {
		status = FUNC0(xdr, res);
		if (status)
			return status;
		return NFS4ERR_OFFLOAD_NO_REQS;
	} else if (status)
		return status;

	status = FUNC2(xdr, &res->write_res);
	if (status)
		return status;

	return FUNC0(xdr, res);
}