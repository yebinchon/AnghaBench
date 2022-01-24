#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfs_subversion {TYPE_1__* rpc_ops; } ;
struct nfs_mount_info {int /*<<< orphan*/ * mntfh; TYPE_2__* parsed; int /*<<< orphan*/  set_security; int /*<<< orphan*/  fill_super; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  version; } ;
struct TYPE_6__ {struct dentry* (* try_mount ) (int,char const*,struct nfs_mount_info*,struct nfs_subversion*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 struct dentry* FUNC0 (struct nfs_subversion*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nfs_subversion*) ; 
 int NFS_TEXT_DATA ; 
 struct nfs_subversion* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  nfs_fill_super ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  nfs_set_sb_security ; 
 int FUNC8 (struct file_system_type*,void*,TYPE_2__*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC9 (void*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_subversion*) ; 
 struct dentry* FUNC11 (int,char const*,struct nfs_mount_info*,struct nfs_subversion*) ; 

struct dentry *FUNC12(struct file_system_type *fs_type,
	int flags, const char *dev_name, void *raw_data)
{
	struct nfs_mount_info mount_info = {
		.fill_super = nfs_fill_super,
		.set_security = nfs_set_sb_security,
	};
	struct dentry *mntroot = FUNC1(-ENOMEM);
	struct nfs_subversion *nfs_mod;
	int error;

	mount_info.parsed = FUNC5();
	mount_info.mntfh = FUNC4();
	if (mount_info.parsed == NULL || mount_info.mntfh == NULL)
		goto out;

	/* Validate the mount data */
	error = FUNC8(fs_type, raw_data, mount_info.parsed, mount_info.mntfh, dev_name);
	if (error == NFS_TEXT_DATA)
		error = FUNC9(raw_data, mount_info.parsed, dev_name);
	if (error < 0) {
		mntroot = FUNC1(error);
		goto out;
	}

	nfs_mod = FUNC3(mount_info.parsed->version);
	if (FUNC2(nfs_mod)) {
		mntroot = FUNC0(nfs_mod);
		goto out;
	}

	mntroot = nfs_mod->rpc_ops->try_mount(flags, dev_name, &mount_info, nfs_mod);

	FUNC10(nfs_mod);
out:
	FUNC7(mount_info.parsed);
	FUNC6(mount_info.mntfh);
	return mntroot;
}