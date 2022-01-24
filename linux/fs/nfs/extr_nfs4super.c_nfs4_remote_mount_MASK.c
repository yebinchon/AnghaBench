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
struct nfs_mount_info {int /*<<< orphan*/  set_security; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (struct nfs_server*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfs_server*) ; 
 struct nfs_server* FUNC3 (struct nfs_mount_info*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC4 (struct nfs_server*,int,char const*,struct nfs_mount_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_set_sb_security ; 
 int /*<<< orphan*/  nfs_v4 ; 

__attribute__((used)) static struct dentry *
FUNC5(struct file_system_type *fs_type, int flags,
		  const char *dev_name, void *info)
{
	struct nfs_mount_info *mount_info = info;
	struct nfs_server *server;
	struct dentry *mntroot = FUNC1(-ENOMEM);

	mount_info->set_security = nfs_set_sb_security;

	/* Get a volume representation */
	server = FUNC3(mount_info, &nfs_v4);
	if (FUNC2(server)) {
		mntroot = FUNC0(server);
		goto out;
	}

	mntroot = FUNC4(server, flags, dev_name, mount_info, &nfs_v4);

out:
	return mntroot;
}