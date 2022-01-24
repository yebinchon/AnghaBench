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
struct nfsd4_op {int /*<<< orphan*/  opnum; struct nfs4_replay* replay; } ;
struct nfs4_replay {scalar_t__ rp_buflen; int /*<<< orphan*/  rp_buf; int /*<<< orphan*/  rp_status; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,scalar_t__) ; 

void
FUNC5(struct xdr_stream *xdr, struct nfsd4_op *op)
{
	__be32 *p;
	struct nfs4_replay *rp = op->replay;

	FUNC0(!rp);

	p = FUNC4(xdr, 8 + rp->rp_buflen);
	if (!p) {
		FUNC1(1);
		return;
	}
	*p++ = FUNC2(op->opnum);
	*p++ = rp->rp_status;  /* already xdr'ed */

	p = FUNC3(p, rp->rp_buf, rp->rp_buflen);
}