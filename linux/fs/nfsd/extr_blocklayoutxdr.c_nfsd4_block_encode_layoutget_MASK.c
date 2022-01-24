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
struct pnfs_block_extent {int es; int /*<<< orphan*/  soff; int /*<<< orphan*/  len; int /*<<< orphan*/  foff; int /*<<< orphan*/  vol_id; } ;
struct nfsd4_layoutget {struct pnfs_block_extent* lg_content; } ;
struct nfsd4_deviceid {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  nfserr_toosmall ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__be32
FUNC4(struct xdr_stream *xdr,
		struct nfsd4_layoutget *lgp)
{
	struct pnfs_block_extent *b = lgp->lg_content;
	int len = sizeof(__be32) + 5 * sizeof(__be64) + sizeof(__be32);
	__be32 *p;

	p = FUNC3(xdr, sizeof(__be32) + len);
	if (!p)
		return nfserr_toosmall;

	*p++ = FUNC0(len);
	*p++ = FUNC0(1);		/* we always return a single extent */

	p = FUNC2(p, &b->vol_id,
			sizeof(struct nfsd4_deviceid));
	p = FUNC1(p, b->foff);
	p = FUNC1(p, b->len);
	p = FUNC1(p, b->soff);
	*p++ = FUNC0(b->es);
	return 0;
}