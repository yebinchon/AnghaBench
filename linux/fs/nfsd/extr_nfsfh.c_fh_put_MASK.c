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
struct svc_fh {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct svc_export {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_fh*) ; 

void
FUNC5(struct svc_fh *fhp)
{
	struct dentry * dentry = fhp->fh_dentry;
	struct svc_export * exp = fhp->fh_export;
	if (dentry) {
		FUNC4(fhp);
		fhp->fh_dentry = NULL;
		FUNC0(dentry);
		FUNC2(fhp);
	}
	FUNC3(fhp);
	if (exp) {
		FUNC1(exp);
		fhp->fh_export = NULL;
	}
	return;
}