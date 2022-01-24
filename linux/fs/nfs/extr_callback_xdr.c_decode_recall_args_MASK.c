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
struct svc_rqst {int dummy; } ;
struct cb_recallargs {int /*<<< orphan*/  fh; int /*<<< orphan*/  truncate; int /*<<< orphan*/  stateid; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 scalar_t__ FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__* FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC6(struct svc_rqst *rqstp,
		struct xdr_stream *xdr, void *argp)
{
	struct cb_recallargs *args = argp;
	__be32 *p;
	__be32 status;

	status = FUNC0(xdr, &args->stateid);
	if (FUNC4(status != 0))
		return status;
	p = FUNC5(xdr, 4);
	if (FUNC4(p == NULL))
		return FUNC2(NFS4ERR_RESOURCE);
	args->truncate = FUNC3(*p);
	return FUNC1(xdr, &args->fh);
}