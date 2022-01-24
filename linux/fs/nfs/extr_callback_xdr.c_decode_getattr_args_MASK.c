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
struct cb_getattrargs {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static __be32 FUNC3(struct svc_rqst *rqstp,
		struct xdr_stream *xdr, void *argp)
{
	struct cb_getattrargs *args = argp;
	__be32 status;

	status = FUNC1(xdr, &args->fh);
	if (FUNC2(status != 0))
		return status;
	return FUNC0(xdr, args->bitmap);
}