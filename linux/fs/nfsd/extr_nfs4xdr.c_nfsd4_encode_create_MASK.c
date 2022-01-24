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
struct nfsd4_create {int /*<<< orphan*/ * cr_bmval; int /*<<< orphan*/  cr_cinfo; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_create *create)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;

	p = FUNC2(xdr, 20);
	if (!p)
		return nfserr_resource;
	FUNC0(p, &create->cr_cinfo);
	return FUNC1(xdr, create->cr_bmval[0],
			create->cr_bmval[1], create->cr_bmval[2]);
}