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
struct nfs_open_context {int /*<<< orphan*/  list; int /*<<< orphan*/  dentry; } ;
struct nfs_inode {int cache_validity; int /*<<< orphan*/  open_files; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_DATA_INVAL_DEFER ; 
 int NFS_INO_INVALID_DATA ; 
 int NFS_INO_REVAL_FORCED ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nfs_open_context *ctx)
{
	struct inode *inode = FUNC1(ctx->dentry);
	struct nfs_inode *nfsi = FUNC0(inode);

	FUNC4(&inode->i_lock);
	if (FUNC3(&nfsi->open_files) &&
	    (nfsi->cache_validity & NFS_INO_DATA_INVAL_DEFER))
		nfsi->cache_validity |= NFS_INO_INVALID_DATA |
			NFS_INO_REVAL_FORCED;
	FUNC2(&ctx->list, &nfsi->open_files);
	FUNC5(&inode->i_lock);
}