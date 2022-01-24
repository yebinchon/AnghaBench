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
struct xdr_stream {TYPE_1__* buf; } ;
struct nfsd4_readlink {int /*<<< orphan*/  rl_fhp; int /*<<< orphan*/  rl_rqstp; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  int __be32 ;
struct TYPE_2__ {int len; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int nfserr_inval ; 
 int nfserr_isdir ; 
 int nfserr_resource ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int*,int) ; 
 int* FUNC4 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC6(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_readlink *readlink)
{
	int maxcount;
	__be32 wire_count;
	int zero = 0;
	struct xdr_stream *xdr = &resp->xdr;
	int length_offset = xdr->buf->len;
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (!p)
		return nfserr_resource;
	maxcount = PAGE_SIZE;

	p = FUNC4(xdr, maxcount);
	if (!p)
		return nfserr_resource;
	/*
	 * XXX: By default, vfs_readlink() will truncate symlinks if they
	 * would overflow the buffer.  Is this kosher in NFSv4?  If not, one
	 * easy fix is: if vfs_readlink() precisely fills the buffer, assume
	 * that truncation occurred, and return NFS4ERR_RESOURCE.
	 */
	nfserr = FUNC2(readlink->rl_rqstp, readlink->rl_fhp,
						(char *)p, &maxcount);
	if (nfserr == nfserr_isdir)
		nfserr = nfserr_inval;
	if (nfserr) {
		FUNC5(xdr, length_offset);
		return nfserr;
	}

	wire_count = FUNC1(maxcount);
	FUNC3(xdr->buf, length_offset, &wire_count, 4);
	FUNC5(xdr, length_offset + 4 + FUNC0(maxcount, 4));
	if (maxcount & 3)
		FUNC3(xdr->buf, length_offset + 4 + maxcount,
						&zero, 4 - (maxcount&3));
	return 0;
}