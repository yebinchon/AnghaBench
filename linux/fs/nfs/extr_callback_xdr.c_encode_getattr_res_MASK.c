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
struct xdr_stream {scalar_t__ p; } ;
struct svc_rqst {int dummy; } ;
struct cb_getattrres {scalar_t__ status; int /*<<< orphan*/  mtime; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  ctime; int /*<<< orphan*/  size; int /*<<< orphan*/  change_attr; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__* FUNC9 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC10(struct svc_rqst *rqstp, struct xdr_stream *xdr,
		const void *resp)
{
	const struct cb_getattrres *res = resp;
	__be32 *savep = NULL;
	__be32 status = res->status;
	
	if (FUNC8(status != 0))
		goto out;
	status = FUNC2(xdr, res->bitmap, FUNC0(res->bitmap));
	if (FUNC8(status != 0))
		goto out;
	status = FUNC1(NFS4ERR_RESOURCE);
	savep = FUNC9(xdr, sizeof(*savep));
	if (FUNC8(!savep))
		goto out;
	status = FUNC3(xdr, res->bitmap, res->change_attr);
	if (FUNC8(status != 0))
		goto out;
	status = FUNC6(xdr, res->bitmap, res->size);
	if (FUNC8(status != 0))
		goto out;
	status = FUNC4(xdr, res->bitmap, &res->ctime);
	if (FUNC8(status != 0))
		goto out;
	status = FUNC5(xdr, res->bitmap, &res->mtime);
	*savep = FUNC7((unsigned int)((char *)xdr->p - (char *)(savep+1)));
out:
	return status;
}