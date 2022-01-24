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
struct nfs_pgio_res {scalar_t__ count; scalar_t__ eof; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC4 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr,
			     struct nfs_pgio_res *result)
{
	u32 eof, count, ocount, recvd;
	__be32 *p;

	p = FUNC3(xdr, 4 + 4 + 4);
	if (FUNC2(!p))
		return -EIO;
	count = FUNC0(p++);
	eof = FUNC0(p++);
	ocount = FUNC0(p++);
	if (FUNC2(ocount != count))
		goto out_mismatch;
	recvd = FUNC4(xdr, count);
	if (FUNC2(count > recvd))
		goto out_cheating;
out:
	result->eof = eof;
	result->count = count;
	return count;
out_mismatch:
	FUNC1("NFS: READ count doesn't match length of opaque: "
		"count %u != ocount %u\n", count, ocount);
	return -EIO;
out_cheating:
	FUNC1("NFS: server cheating in read result: "
		"count %u > recvd %u\n", count, recvd);
	count = recvd;
	eof = 0;
	goto out;
}