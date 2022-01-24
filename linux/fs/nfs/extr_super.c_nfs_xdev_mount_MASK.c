#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_subversion {TYPE_2__* rpc_ops; } ;
struct nfs_server {int dummy; } ;
struct nfs_mount_info {struct nfs_clone_mount* cloned; int /*<<< orphan*/  mntfh; int /*<<< orphan*/  set_security; int /*<<< orphan*/  fill_super; } ;
struct nfs_clone_mount {int /*<<< orphan*/  authflavor; int /*<<< orphan*/  fattr; int /*<<< orphan*/  fh; int /*<<< orphan*/  sb; } ;
struct file_system_type {int dummy; } ;
typedef  struct nfs_server dentry ;
struct TYPE_7__ {TYPE_1__* nfs_client; } ;
struct TYPE_6__ {struct nfs_server* (* clone_server ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct nfs_subversion* cl_nfs_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs_server* FUNC0 (struct nfs_server*) ; 
 struct nfs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfs_server*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 long FUNC4 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  nfs_clone_sb_security ; 
 int /*<<< orphan*/  nfs_clone_super ; 
 struct nfs_server* FUNC6 (struct nfs_server*,int,char const*,struct nfs_mount_info*,struct nfs_subversion*) ; 
 struct nfs_server* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *
FUNC8(struct file_system_type *fs_type, int flags,
		const char *dev_name, void *raw_data)
{
	struct nfs_clone_mount *data = raw_data;
	struct nfs_mount_info mount_info = {
		.fill_super = nfs_clone_super,
		.set_security = nfs_clone_sb_security,
		.cloned = data,
	};
	struct nfs_server *server;
	struct dentry *mntroot = FUNC1(-ENOMEM);
	struct nfs_subversion *nfs_mod = FUNC3(data->sb)->nfs_client->cl_nfs_mod;

	FUNC5("--> nfs_xdev_mount()\n");

	mount_info.mntfh = mount_info.cloned->fh;

	/* create a new volume representation */
	server = nfs_mod->rpc_ops->clone_server(FUNC3(data->sb), data->fh, data->fattr, data->authflavor);

	if (FUNC2(server))
		mntroot = FUNC0(server);
	else
		mntroot = FUNC6(server, flags,
				dev_name, &mount_info, nfs_mod);

	FUNC5("<-- nfs_xdev_mount() = %ld\n",
			FUNC2(mntroot) ? FUNC4(mntroot) : 0L);
	return mntroot;
}