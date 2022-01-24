#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_mount_info {TYPE_1__* cloned; } ;
struct dentry {int dummy; } ;
struct TYPE_10__ {int caps; TYPE_3__* nfs_client; } ;
struct TYPE_9__ {scalar_t__ i_op; } ;
struct TYPE_8__ {TYPE_2__* rpc_ops; } ;
struct TYPE_7__ {scalar_t__ dir_inode_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int ESTALE ; 
 int NFS_CAP_SECURITY_LABEL ; 
 TYPE_5__* FUNC0 (struct super_block*) ; 
 unsigned long SECURITY_LSM_NATIVE_LABELS ; 
 TYPE_4__* FUNC1 (struct dentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct super_block*,unsigned long,unsigned long*) ; 

int FUNC3(struct super_block *s, struct dentry *mntroot,
			  struct nfs_mount_info *mount_info)
{
	int error;
	unsigned long kflags = 0, kflags_out = 0;

	/* clone any lsm security options from the parent to the new sb */
	if (FUNC1(mntroot)->i_op != FUNC0(s)->nfs_client->rpc_ops->dir_inode_ops)
		return -ESTALE;

	if (FUNC0(s)->caps & NFS_CAP_SECURITY_LABEL)
		kflags |= SECURITY_LSM_NATIVE_LABELS;

	error = FUNC2(mount_info->cloned->sb, s, kflags,
			&kflags_out);
	if (error)
		return error;

	if (FUNC0(s)->caps & NFS_CAP_SECURITY_LABEL &&
		!(kflags_out & SECURITY_LSM_NATIVE_LABELS))
		FUNC0(s)->caps &= ~NFS_CAP_SECURITY_LABEL;
	return 0;
}