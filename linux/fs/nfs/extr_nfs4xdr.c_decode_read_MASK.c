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
typedef  scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_pgio_res {scalar_t__ count; scalar_t__ eof; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OP_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC5 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr, struct rpc_rqst *req,
		       struct nfs_pgio_res *res)
{
	__be32 *p;
	uint32_t count, eof, recvd;
	int status;

	status = FUNC1(xdr, OP_READ);
	if (status)
		return status;
	p = FUNC4(xdr, 8);
	if (FUNC3(!p))
		return -EIO;
	eof = FUNC0(p++);
	count = FUNC0(p);
	recvd = FUNC5(xdr, count);
	if (count > recvd) {
		FUNC2("NFS: server cheating in read reply: "
				"count %u > recvd %u\n", count, recvd);
		count = recvd;
		eof = 0;
	}
	res->eof = eof;
	res->count = count;
	return 0;
}