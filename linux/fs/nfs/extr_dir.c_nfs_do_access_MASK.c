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
struct nfs_access_entry {int mask; struct cred const* cred; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int (* access ) (struct inode*,struct nfs_access_entry*) ;} ;

/* Variables and functions */
 int EACCES ; 
 int ECHILD ; 
 int ESTALE ; 
 int MAY_EXEC ; 
 int MAY_NOT_BLOCK ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int NFS_ACCESS_DELETE ; 
 int NFS_ACCESS_EXECUTE ; 
 int NFS_ACCESS_EXTEND ; 
 int NFS_ACCESS_LOOKUP ; 
 int NFS_ACCESS_MODIFY ; 
 int NFS_ACCESS_READ ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_STALE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct nfs_access_entry*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct cred const*,struct nfs_access_entry*,int) ; 
 int FUNC6 (struct inode*,struct cred const*,struct nfs_access_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct nfs_access_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, const struct cred *cred, int mask)
{
	struct nfs_access_entry cache;
	bool may_block = (mask & MAY_NOT_BLOCK) == 0;
	int cache_mask;
	int status;

	FUNC10(inode);

	status = FUNC6(inode, cred, &cache);
	if (status != 0)
		status = FUNC5(inode, cred, &cache, may_block);
	if (status == 0)
		goto out_cached;

	status = -ECHILD;
	if (!may_block)
		goto out;

	/*
	 * Determine which access bits we want to ask for...
	 */
	cache.mask = NFS_ACCESS_READ | NFS_ACCESS_MODIFY | NFS_ACCESS_EXTEND;
	if (FUNC2(inode->i_mode))
		cache.mask |= NFS_ACCESS_DELETE | NFS_ACCESS_LOOKUP;
	else
		cache.mask |= NFS_ACCESS_EXECUTE;
	cache.cred = cred;
	status = FUNC1(inode)->access(inode, &cache);
	if (status != 0) {
		if (status == -ESTALE) {
			FUNC7(inode);
			if (!FUNC2(inode->i_mode))
				FUNC8(NFS_INO_STALE, &FUNC0(inode)->flags);
		}
		goto out;
	}
	FUNC3(inode, &cache);
out_cached:
	cache_mask = FUNC4(cache.mask, inode->i_mode);
	if ((mask & ~cache_mask & (MAY_READ | MAY_WRITE | MAY_EXEC)) != 0)
		status = -EACCES;
out:
	FUNC11(inode, status);
	return status;
}