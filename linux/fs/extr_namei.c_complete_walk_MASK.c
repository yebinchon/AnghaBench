#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * mnt; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct nameidata {int flags; TYPE_1__ root; TYPE_3__ path; } ;
struct dentry {int d_flags; TYPE_2__* d_op; } ;
struct TYPE_5__ {int (* d_weak_revalidate ) (struct dentry*,int) ;} ;

/* Variables and functions */
 int DCACHE_OP_WEAK_REVALIDATE ; 
 int ECHILD ; 
 int ESTALE ; 
 int LOOKUP_JUMPED ; 
 int LOOKUP_RCU ; 
 int LOOKUP_ROOT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nameidata *nd)
{
	struct dentry *dentry = nd->path.dentry;
	int status;

	if (nd->flags & LOOKUP_RCU) {
		if (!(nd->flags & LOOKUP_ROOT))
			nd->root.mnt = NULL;
		if (FUNC3(FUNC2(nd)))
			return -ECHILD;
	}

	if (FUNC0(!(nd->flags & LOOKUP_JUMPED)))
		return 0;

	if (FUNC0(!(dentry->d_flags & DCACHE_OP_WEAK_REVALIDATE)))
		return 0;

	status = dentry->d_op->d_weak_revalidate(dentry, nd->flags);
	if (status > 0)
		return 0;

	if (!status)
		status = -ESTALE;

	return status;
}