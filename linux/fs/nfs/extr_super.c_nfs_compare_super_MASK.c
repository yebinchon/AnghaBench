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
struct super_block {int dummy; } ;
struct nfs_server {int flags; int /*<<< orphan*/  fsid; } ;
struct nfs_sb_mountdata {int mntflags; struct nfs_server* server; } ;

/* Variables and functions */
 int NFS_MOUNT_UNSHARED ; 
 struct nfs_server* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct super_block*,struct nfs_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*,struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*,struct nfs_server*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, void *data)
{
	struct nfs_sb_mountdata *sb_mntdata = data;
	struct nfs_server *server = sb_mntdata->server, *old = FUNC0(sb);
	int mntflags = sb_mntdata->mntflags;

	if (!FUNC3(old, server))
		return 0;
	/* Note: NFS_MOUNT_UNSHARED == NFS4_MOUNT_UNSHARED */
	if (old->flags & NFS_MOUNT_UNSHARED)
		return 0;
	if (FUNC1(&old->fsid, &server->fsid, sizeof(old->fsid)) != 0)
		return 0;
	if (!FUNC4(old, server))
		return 0;
	return FUNC2(sb, server, mntflags);
}