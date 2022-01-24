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
struct nfs_server {int dummy; } ;
struct nfs_mount_info {void* cloned; int /*<<< orphan*/ * mntfh; int /*<<< orphan*/  set_security; int /*<<< orphan*/  fill_super; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (struct nfs_server*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct nfs_server* FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  nfs_clone_sb_security ; 
 int /*<<< orphan*/  nfs_fill_super ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC7 (struct nfs_server*,int,char const*,struct nfs_mount_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_v4 ; 

__attribute__((used)) static struct dentry *
FUNC8(struct file_system_type *fs_type, int flags,
			   const char *dev_name, void *raw_data)
{
	struct nfs_mount_info mount_info = {
		.fill_super = nfs_fill_super,
		.set_security = nfs_clone_sb_security,
		.cloned = raw_data,
	};
	struct nfs_server *server;
	struct dentry *mntroot = FUNC1(-ENOMEM);

	FUNC3("--> nfs4_referral_get_sb()\n");

	mount_info.mntfh = FUNC5();
	if (mount_info.cloned == NULL || mount_info.mntfh == NULL)
		goto out;

	/* create a new volume representation */
	server = FUNC4(mount_info.cloned, mount_info.mntfh);
	if (FUNC2(server)) {
		mntroot = FUNC0(server);
		goto out;
	}

	mntroot = FUNC7(server, flags, dev_name, &mount_info, &nfs_v4);
out:
	FUNC6(mount_info.mntfh);
	return mntroot;
}