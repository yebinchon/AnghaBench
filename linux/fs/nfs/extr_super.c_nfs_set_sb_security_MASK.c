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
struct super_block {int dummy; } ;
struct nfs_mount_info {TYPE_1__* parsed; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int caps; } ;
struct TYPE_3__ {int /*<<< orphan*/  lsm_opts; } ;

/* Variables and functions */
 int NFS_CAP_SECURITY_LABEL ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 unsigned long SECURITY_LSM_NATIVE_LABELS ; 
 int FUNC1 (struct super_block*,int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 

int FUNC2(struct super_block *s, struct dentry *mntroot,
			struct nfs_mount_info *mount_info)
{
	int error;
	unsigned long kflags = 0, kflags_out = 0;
	if (FUNC0(s)->caps & NFS_CAP_SECURITY_LABEL)
		kflags |= SECURITY_LSM_NATIVE_LABELS;

	error = FUNC1(s, mount_info->parsed->lsm_opts,
						kflags, &kflags_out);
	if (error)
		goto err;

	if (FUNC0(s)->caps & NFS_CAP_SECURITY_LABEL &&
		!(kflags_out & SECURITY_LSM_NATIVE_LABELS))
		FUNC0(s)->caps &= ~NFS_CAP_SECURITY_LABEL;
err:
	return error;
}