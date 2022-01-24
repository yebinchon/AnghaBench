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
struct super_block {int s_time_gran; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_maxbytes; struct hugetlbfs_sb_info* s_fs_info; } ;
struct hugetlbfs_sb_info {struct hugetlbfs_sb_info* spool; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  free_inodes; int /*<<< orphan*/  max_inodes; int /*<<< orphan*/  hstate; int /*<<< orphan*/  stat_lock; } ;
struct hugetlbfs_fs_context {int max_hpages; int min_hpages; int /*<<< orphan*/  hstate; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  nr_inodes; } ;
struct fs_context {struct hugetlbfs_fs_context* fs_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HUGETLBFS_MAGIC ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hugetlbfs_sb_info* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct hugetlbfs_fs_context*) ; 
 int /*<<< orphan*/  hugetlbfs_ops ; 
 int /*<<< orphan*/  FUNC5 (struct hugetlbfs_sb_info*) ; 
 struct hugetlbfs_sb_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct super_block *sb, struct fs_context *fc)
{
	struct hugetlbfs_fs_context *ctx = fc->fs_private;
	struct hugetlbfs_sb_info *sbinfo;

	sbinfo = FUNC6(sizeof(struct hugetlbfs_sb_info), GFP_KERNEL);
	if (!sbinfo)
		return -ENOMEM;
	sb->s_fs_info = sbinfo;
	FUNC7(&sbinfo->stat_lock);
	sbinfo->hstate		= ctx->hstate;
	sbinfo->max_inodes	= ctx->nr_inodes;
	sbinfo->free_inodes	= ctx->nr_inodes;
	sbinfo->spool		= NULL;
	sbinfo->uid		= ctx->uid;
	sbinfo->gid		= ctx->gid;
	sbinfo->mode		= ctx->mode;

	/*
	 * Allocate and initialize subpool if maximum or minimum size is
	 * specified.  Any needed reservations (for minimim size) are taken
	 * taken when the subpool is created.
	 */
	if (ctx->max_hpages != -1 || ctx->min_hpages != -1) {
		sbinfo->spool = FUNC3(ctx->hstate,
						     ctx->max_hpages,
						     ctx->min_hpages);
		if (!sbinfo->spool)
			goto out_free;
	}
	sb->s_maxbytes = MAX_LFS_FILESIZE;
	sb->s_blocksize = FUNC2(ctx->hstate);
	sb->s_blocksize_bits = FUNC1(ctx->hstate);
	sb->s_magic = HUGETLBFS_MAGIC;
	sb->s_op = &hugetlbfs_ops;
	sb->s_time_gran = 1;
	sb->s_root = FUNC0(FUNC4(sb, ctx));
	if (!sb->s_root)
		goto out_free;
	return 0;
out_free:
	FUNC5(sbinfo->spool);
	FUNC5(sbinfo);
	return -ENOMEM;
}