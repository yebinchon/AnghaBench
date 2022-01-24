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
struct nfs_fh {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS2_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, struct nfs_fh *fh)
{
	__be32 *p;

	p = FUNC2(xdr, NFS2_FHSIZE);
	if (FUNC1(!p))
		return -EIO;
	fh->size = NFS2_FHSIZE;
	FUNC0(fh->data, p, NFS2_FHSIZE);
	return 0;
}