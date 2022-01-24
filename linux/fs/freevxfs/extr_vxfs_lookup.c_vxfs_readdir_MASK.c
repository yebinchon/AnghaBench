#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct vxfs_sb_info {int dummy; } ;
struct vxfs_direct {char* d_name; int /*<<< orphan*/  d_reclen; int /*<<< orphan*/  d_ino; int /*<<< orphan*/  d_namelen; } ;
struct vxfs_dirblk {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  vii_dotdot; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct vxfs_sb_info*,struct vxfs_dirblk*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 struct vxfs_sb_info* FUNC4 (struct super_block*) ; 
 int FUNC5 (struct dir_context*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct dir_context*) ; 
 struct inode* FUNC7 (struct file*) ; 
 int FUNC8 (struct vxfs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vxfs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int
FUNC13(struct file *fp, struct dir_context *ctx)
{
	struct inode		*ip = FUNC7(fp);
	struct super_block	*sbp = ip->i_sb;
	u_long			bsize = sbp->s_blocksize;
	loff_t			pos, limit;
	struct vxfs_sb_info	*sbi = FUNC4(sbp);

	if (ctx->pos == 0) {
		if (!FUNC6(fp, ctx))
			goto out;
		ctx->pos++;
	}
	if (ctx->pos == 1) {
		if (!FUNC5(ctx, "..", 2, FUNC3(ip)->vii_dotdot, DT_DIR))
			goto out;
		ctx->pos++;
	}

	limit = FUNC2(ip->i_size);
	if (ctx->pos > limit)
		goto out;

	pos = ctx->pos & ~3L;

	while (pos < limit) {
		struct page *pp;
		char *kaddr;
		int pg_ofs = pos & ~PAGE_MASK;
		int rc = 0;

		pp = FUNC11(ip->i_mapping, pos >> PAGE_SHIFT);
		if (FUNC0(pp))
			return -ENOMEM;

		kaddr = (char *)FUNC10(pp);

		while (pg_ofs < PAGE_SIZE && pos < limit) {
			struct vxfs_direct *de;

			if ((pos & (bsize - 1)) < 4) {
				struct vxfs_dirblk *dbp =
					(struct vxfs_dirblk *)
					 (kaddr + (pos & ~PAGE_MASK));
				int overhead = FUNC1(sbi, dbp);

				pos += overhead;
				pg_ofs += overhead;
			}
			de = (struct vxfs_direct *)(kaddr + pg_ofs);

			if (!de->d_reclen) {
				pos += bsize - 1;
				pos &= ~(bsize - 1);
				break;
			}

			pg_ofs += FUNC8(sbi, de->d_reclen);
			pos += FUNC8(sbi, de->d_reclen);
			if (!de->d_ino)
				continue;

			rc = FUNC5(ctx, de->d_name,
					FUNC8(sbi, de->d_namelen),
					FUNC9(sbi, de->d_ino),
					DT_UNKNOWN);
			if (!rc) {
				/* the dir entry was not read, fix pos. */
				pos -= FUNC8(sbi, de->d_reclen);
				break;
			}
		}
		FUNC12(pp);
		if (!rc)
			break;
	}

	ctx->pos = pos | 2;

out:
	return 0;
}