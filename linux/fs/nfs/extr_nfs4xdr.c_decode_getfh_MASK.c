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
typedef  int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int NFS4_FHSIZE ; 
 int /*<<< orphan*/  OP_GETFH ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_fh*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr, struct nfs_fh *fh)
{
	__be32 *p;
	uint32_t len;
	int status;

	/* Zero handle first to allow comparisons */
	FUNC3(fh, 0, sizeof(*fh));

	status = FUNC1(xdr, OP_GETFH);
	if (status)
		return status;

	p = FUNC5(xdr, 4);
	if (FUNC4(!p))
		return -EIO;
	len = FUNC0(p);
	if (len > NFS4_FHSIZE)
		return -EIO;
	fh->size = len;
	p = FUNC5(xdr, len);
	if (FUNC4(!p))
		return -EIO;
	FUNC2(fh->data, p, len);
	return 0;
}