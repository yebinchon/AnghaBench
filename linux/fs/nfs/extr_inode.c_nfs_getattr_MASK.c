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
typedef  int u32 ;
struct path {int /*<<< orphan*/  dentry; TYPE_1__* mnt; } ;
struct nfs_server {int flags; int /*<<< orphan*/  dtsize; } ;
struct kstat {int result_mask; int /*<<< orphan*/  blksize; int /*<<< orphan*/  ino; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  cache_validity; } ;
struct TYPE_3__ {int mnt_flags; } ;

/* Variables and functions */
 unsigned int AT_STATX_DONT_SYNC ; 
 unsigned int AT_STATX_FORCE_SYNC ; 
 int MNT_NOATIME ; 
 int MNT_NODIRATIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 unsigned long NFS_INO_INVALID_ATIME ; 
 unsigned long NFS_INO_INVALID_ATTR ; 
 unsigned long NFS_INO_INVALID_LABEL ; 
 unsigned long NFS_INO_REVAL_PAGECACHE ; 
 int NFS_MOUNT_NOAC ; 
 struct nfs_server* FUNC2 (struct inode*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int STATX_ATIME ; 
 int STATX_BLOCKS ; 
 int STATX_CTIME ; 
 int STATX_GID ; 
 int STATX_MODE ; 
 int STATX_MTIME ; 
 int STATX_NLINK ; 
 int STATX_SIZE ; 
 int STATX_UID ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nfs_server*,struct inode*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct kstat*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 

int FUNC16(const struct path *path, struct kstat *stat,
		u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC7(path->dentry);
	struct nfs_server *server = FUNC2(inode);
	unsigned long cache_validity;
	int err = 0;
	bool force_sync = query_flags & AT_STATX_FORCE_SYNC;
	bool do_update = false;

	FUNC14(inode);

	if ((query_flags & AT_STATX_DONT_SYNC) && !force_sync)
		goto out_no_update;

	/* Flush out writes to the server in order to update c/mtime.  */
	if ((request_mask & (STATX_CTIME|STATX_MTIME)) &&
			FUNC5(inode->i_mode)) {
		err = FUNC8(inode->i_mapping);
		if (err)
			goto out;
	}

	/*
	 * We may force a getattr if the user cares about atime.
	 *
	 * Note that we only have to check the vfsmount flags here:
	 *  - NFS always sets S_NOATIME by so checking it would give a
	 *    bogus result
	 *  - NFS never sets SB_NOATIME or SB_NODIRATIME so there is
	 *    no point in checking those.
	 */
	if ((path->mnt->mnt_flags & MNT_NOATIME) ||
	    ((path->mnt->mnt_flags & MNT_NODIRATIME) && FUNC4(inode->i_mode)))
		request_mask &= ~STATX_ATIME;

	/* Is the user requesting attributes that might need revalidation? */
	if (!(request_mask & (STATX_MODE|STATX_NLINK|STATX_ATIME|STATX_CTIME|
					STATX_MTIME|STATX_UID|STATX_GID|
					STATX_SIZE|STATX_BLOCKS)))
		goto out_no_revalidate;

	/* Check whether the cached attributes are stale */
	do_update |= force_sync || FUNC10(inode);
	cache_validity = FUNC3(FUNC1(inode)->cache_validity);
	do_update |= cache_validity &
		(NFS_INO_INVALID_ATTR|NFS_INO_INVALID_LABEL);
	if (request_mask & STATX_ATIME)
		do_update |= cache_validity & NFS_INO_INVALID_ATIME;
	if (request_mask & (STATX_CTIME|STATX_MTIME))
		do_update |= cache_validity & NFS_INO_REVAL_PAGECACHE;
	if (do_update) {
		/* Update the attribute cache */
		if (!(server->flags & NFS_MOUNT_NOAC))
			FUNC13(path->dentry);
		else
			FUNC12(path->dentry);
		err = FUNC6(server, inode);
		if (err)
			goto out;
	} else
		FUNC12(path->dentry);
out_no_revalidate:
	/* Only return attributes that were revalidated. */
	stat->result_mask &= request_mask;
out_no_update:
	FUNC9(inode, stat);
	stat->ino = FUNC11(FUNC0(inode));
	if (FUNC4(inode->i_mode))
		stat->blksize = FUNC2(inode)->dtsize;
out:
	FUNC15(inode, err);
	return err;
}