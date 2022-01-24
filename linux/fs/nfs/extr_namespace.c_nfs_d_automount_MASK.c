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
struct vfsmount {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {struct vfsmount* (* submount ) (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fh*,struct nfs_fattr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfs_server* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 struct nfs_fattr* FUNC7 () ; 
 struct nfs_fh* FUNC8 () ; 
 int /*<<< orphan*/  nfs_automount_list ; 
 int /*<<< orphan*/  nfs_automount_task ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_fh*) ; 
 int /*<<< orphan*/  nfs_mountpoint_expiry_timeout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC12 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fh*,struct nfs_fattr*) ; 

struct vfsmount *FUNC13(struct path *path)
{
	struct vfsmount *mnt;
	struct nfs_server *server = FUNC3(FUNC4(path->dentry));
	struct nfs_fh *fh = NULL;
	struct nfs_fattr *fattr = NULL;

	if (FUNC2(path->dentry))
		return FUNC0(-ESTALE);

	mnt = FUNC0(-ENOMEM);
	fh = FUNC8();
	fattr = FUNC7();
	if (fh == NULL || fattr == NULL)
		goto out;

	mnt = server->nfs_client->rpc_ops->submount(server, path->dentry, fh, fattr);
	if (FUNC1(mnt))
		goto out;

	FUNC6(mnt); /* prevent immediate expiration */
	FUNC5(mnt, &nfs_automount_list);
	FUNC11(&nfs_automount_task, nfs_mountpoint_expiry_timeout);

out:
	FUNC9(fattr);
	FUNC10(fh);
	return mnt;
}