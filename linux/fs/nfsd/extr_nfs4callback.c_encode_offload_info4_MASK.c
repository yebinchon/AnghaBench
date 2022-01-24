#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ wr_verifier; int /*<<< orphan*/  wr_stable_how; int /*<<< orphan*/  wr_bytes_written; } ;
struct nfsd4_copy {TYPE_2__ cp_res; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFS4_VERIFIER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC5(struct xdr_stream *xdr,
				 __be32 nfserr,
				 const struct nfsd4_copy *cp)
{
	__be32 *p;

	p = FUNC4(xdr, 4);
	*p++ = nfserr;
	if (!nfserr) {
		p = FUNC4(xdr, 4 + 8 + 4 + NFS4_VERIFIER_SIZE);
		p = FUNC1(p);
		p = FUNC2(p, cp->cp_res.wr_bytes_written);
		*p++ = FUNC0(cp->cp_res.wr_stable_how);
		p = FUNC3(p, cp->cp_res.wr_verifier.data,
					    NFS4_VERIFIER_SIZE);
	} else {
		p = FUNC4(xdr, 8);
		/* We always return success if bytes were written */
		p = FUNC2(p, 0);
	}
}