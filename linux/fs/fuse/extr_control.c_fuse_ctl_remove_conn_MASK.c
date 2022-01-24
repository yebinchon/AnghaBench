#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fuse_conn {int ctl_ndents; struct dentry** ctl_dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * i_private; } ;
struct TYPE_4__ {struct dentry* s_root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* fuse_control_sb ; 

void FUNC4(struct fuse_conn *fc)
{
	int i;

	if (!fuse_control_sb)
		return;

	for (i = fc->ctl_ndents - 1; i >= 0; i--) {
		struct dentry *dentry = fc->ctl_dentry[i];
		FUNC0(dentry)->i_private = NULL;
		if (!i) {
			/* Get rid of submounts: */
			FUNC1(dentry);
		}
		FUNC2(dentry);
	}
	FUNC3(FUNC0(fuse_control_sb->s_root));
}