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
struct nfs_lock_res {int /*<<< orphan*/  lock_seqid; int /*<<< orphan*/ * open_seqid; int /*<<< orphan*/  stateid; } ;

/* Variables and functions */
 int EIO ; 
 int NFS4ERR_DENIED ; 
 int /*<<< orphan*/  OP_LOCK ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr, struct nfs_lock_res *res)
{
	int status;

	status = FUNC2(xdr, OP_LOCK);
	if (status == -EIO)
		goto out;
	if (status == 0) {
		status = FUNC1(xdr, &res->stateid);
		if (FUNC5(status))
			goto out;
	} else if (status == -NFS4ERR_DENIED)
		status = FUNC0(xdr, NULL);
	if (res->open_seqid != NULL)
		FUNC4(status, res->open_seqid);
	FUNC3(status, res->lock_seqid);
out:
	return status;
}