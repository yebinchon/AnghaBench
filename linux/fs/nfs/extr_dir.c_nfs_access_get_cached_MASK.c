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
struct nfs_inode {int cache_validity; int /*<<< orphan*/  access_cache_entry_lru; } ;
struct nfs_access_entry {int /*<<< orphan*/  lru; int /*<<< orphan*/  mask; int /*<<< orphan*/  cred; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs_access_entry* FUNC4 (struct inode*,struct cred const*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, const struct cred *cred, struct nfs_access_entry *res, bool may_block)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_access_entry *cache;
	bool retry = true;
	int err;

	FUNC7(&inode->i_lock);
	for(;;) {
		if (nfsi->cache_validity & NFS_INO_INVALID_ACCESS)
			goto out_zap;
		cache = FUNC4(inode, cred);
		err = -ENOENT;
		if (cache == NULL)
			goto out;
		/* Found an entry, is our attribute cache valid? */
		if (!FUNC6(inode, NFS_INO_INVALID_ACCESS))
			break;
		err = -ECHILD;
		if (!may_block)
			goto out;
		if (!retry)
			goto out_zap;
		FUNC8(&inode->i_lock);
		err = FUNC2(FUNC1(inode), inode);
		if (err)
			return err;
		FUNC7(&inode->i_lock);
		retry = false;
	}
	res->cred = cache->cred;
	res->mask = cache->mask;
	FUNC3(&cache->lru, &nfsi->access_cache_entry_lru);
	err = 0;
out:
	FUNC8(&inode->i_lock);
	return err;
out_zap:
	FUNC8(&inode->i_lock);
	FUNC5(inode);
	return -ENOENT;
}