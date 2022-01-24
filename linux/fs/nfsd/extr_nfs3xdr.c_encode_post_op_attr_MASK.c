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
struct svc_rqst {int dummy; } ;
struct svc_fh {struct dentry* fh_dentry; } ;
struct kstat {int /*<<< orphan*/  mtime; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/ * FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *,struct svc_fh*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_one ; 
 int /*<<< orphan*/  xdr_zero ; 

__attribute__((used)) static __be32 *
FUNC5(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{
	struct dentry *dentry = fhp->fh_dentry;
	if (dentry && FUNC1(dentry)) {
	        __be32 err;
		struct kstat stat;

		err = FUNC3(fhp, &stat);
		if (!err) {
			*p++ = xdr_one;		/* attributes follow */
			FUNC4(FUNC0(dentry), &stat.mtime);
			return FUNC2(rqstp, p, fhp, &stat);
		}
	}
	*p++ = xdr_zero;
	return p;
}