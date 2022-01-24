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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct fscrypt_str {int dummy; } ;
struct file_ra_state {int dummy; } ;
struct file {struct file_ra_state f_ra; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dummy; } ;
struct dir_context {unsigned int pos; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENOKEY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  F2FS_NAME_LEN ; 
 struct fscrypt_str FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ MAX_DIR_RA_PAGES ; 
 unsigned long NR_DENTRY_IN_BLOCK ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  current ; 
 unsigned long FUNC5 (struct inode*) ; 
 int FUNC6 (struct dir_context*,struct f2fs_dentry_ptr*,unsigned int,struct fscrypt_str*) ; 
 struct page* FUNC7 (struct inode*,unsigned int) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct file*,struct dir_context*,struct fscrypt_str*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (struct file*) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ,struct fscrypt_str*) ; 
 int /*<<< orphan*/  FUNC14 (struct fscrypt_str*) ; 
 int FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long,int /*<<< orphan*/ ) ; 
 struct f2fs_dentry_block* FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct file_ra_state*,struct file*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct file_ra_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC22(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC12(file);
	unsigned long npages = FUNC5(inode);
	struct f2fs_dentry_block *dentry_blk = NULL;
	struct page *dentry_page = NULL;
	struct file_ra_state *ra = &file->f_ra;
	loff_t start_pos = ctx->pos;
	unsigned int n = ((unsigned long)ctx->pos / NR_DENTRY_IN_BLOCK);
	struct f2fs_dentry_ptr d;
	struct fscrypt_str fstr = FUNC0(NULL, 0);
	int err = 0;

	if (FUNC1(inode)) {
		err = FUNC15(inode);
		if (err && err != -ENOKEY)
			goto out;

		err = FUNC13(inode, F2FS_NAME_LEN, &fstr);
		if (err < 0)
			goto out;
	}

	if (FUNC8(inode)) {
		err = FUNC10(file, ctx, &fstr);
		goto out_free;
	}

	for (; n < npages; n++, ctx->pos = n * NR_DENTRY_IN_BLOCK) {

		/* allow readdir() to be interrupted */
		if (FUNC11(current)) {
			err = -ERESTARTSYS;
			goto out_free;
		}
		FUNC4();

		/* readahead for multi pages of dir */
		if (npages - n > 1 && !FUNC20(ra, n))
			FUNC19(inode->i_mapping, ra, file, n,
				FUNC17(npages - n, (pgoff_t)MAX_DIR_RA_PAGES));

		dentry_page = FUNC7(inode, n);
		if (FUNC2(dentry_page)) {
			err = FUNC3(dentry_page);
			if (err == -ENOENT) {
				err = 0;
				continue;
			} else {
				goto out_free;
			}
		}

		dentry_blk = FUNC18(dentry_page);

		FUNC16(inode, &d, dentry_blk);

		err = FUNC6(ctx, &d,
				n * NR_DENTRY_IN_BLOCK, &fstr);
		if (err) {
			FUNC9(dentry_page, 0);
			break;
		}

		FUNC9(dentry_page, 0);
	}
out_free:
	FUNC14(&fstr);
out:
	FUNC21(inode, start_pos, ctx->pos, err);
	return err < 0 ? err : 0;
}