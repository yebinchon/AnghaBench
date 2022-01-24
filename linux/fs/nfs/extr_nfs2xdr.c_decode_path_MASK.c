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
typedef  scalar_t__ u32 ;
struct xdr_stream {TYPE_1__* buf; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ page_len; } ;

/* Variables and functions */
 int EIO ; 
 int ENAMETOOLONG ; 
 scalar_t__ NFS_MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC4 (struct xdr_stream*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr)
{
	u32 length, recvd;
	__be32 *p;

	p = FUNC3(xdr, 4);
	if (FUNC2(!p))
		return -EIO;
	length = FUNC0(p);
	if (FUNC2(length >= xdr->buf->page_len || length > NFS_MAXPATHLEN))
		goto out_size;
	recvd = FUNC4(xdr, length);
	if (FUNC2(length > recvd))
		goto out_cheating;
	FUNC5(xdr->buf, length);
	return 0;
out_size:
	FUNC1("NFS: returned pathname too long: %u\n", length);
	return -ENAMETOOLONG;
out_cheating:
	FUNC1("NFS: server cheating in pathname result: "
		"length %u > received %u\n", length, recvd);
	return -EIO;
}