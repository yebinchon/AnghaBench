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
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct xdr_buf {scalar_t__ page_len; } ;
struct rpc_rqst {struct xdr_buf rq_rcv_buf; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  OP_READLINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC5 (struct xdr_stream*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_buf*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct xdr_stream *xdr, struct rpc_rqst *req)
{
	struct xdr_buf *rcvbuf = &req->rq_rcv_buf;
	u32 len, recvd;
	__be32 *p;
	int status;

	status = FUNC1(xdr, OP_READLINK);
	if (status)
		return status;

	/* Convert length of symlink */
	p = FUNC4(xdr, 4);
	if (FUNC3(!p))
		return -EIO;
	len = FUNC0(p);
	if (len >= rcvbuf->page_len || len <= 0) {
		FUNC2("nfs: server returned giant symlink!\n");
		return -ENAMETOOLONG;
	}
	recvd = FUNC5(xdr, len);
	if (recvd < len) {
		FUNC2("NFS: server cheating in readlink reply: "
				"count %u > recvd %u\n", len, recvd);
		return -EIO;
	}
	/*
	 * The XDR encode routine has set things up so that
	 * the link text will be copied directly into the
	 * buffer.  We just have to do overflow-checking,
	 * and and null-terminate the text (the VFS expects
	 * null-termination).
	 */
	FUNC6(rcvbuf, len);
	return 0;
}