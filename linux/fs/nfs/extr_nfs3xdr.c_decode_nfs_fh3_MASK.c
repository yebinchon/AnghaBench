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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int E2BIG ; 
 int EIO ; 
 int NFS3_FHSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, struct nfs_fh *fh)
{
	u32 length;
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (FUNC3(!p))
		return -EIO;
	length = FUNC0(p++);
	if (FUNC3(length > NFS3_FHSIZE))
		goto out_toobig;
	p = FUNC4(xdr, length);
	if (FUNC3(!p))
		return -EIO;
	fh->size = length;
	FUNC2(fh->data, p, length);
	return 0;
out_toobig:
	FUNC1("NFS: file handle size (%u) too big\n", length);
	return -E2BIG;
}