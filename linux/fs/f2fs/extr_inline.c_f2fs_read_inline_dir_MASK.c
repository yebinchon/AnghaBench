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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct fscrypt_str {int dummy; } ;
struct file {int dummy; } ;
struct f2fs_dentry_ptr {scalar_t__ max; } ;
struct dir_context {scalar_t__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int FUNC3 (struct dir_context*,struct f2fs_dentry_ptr*,int /*<<< orphan*/ ,struct fscrypt_str*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct file*) ; 
 void* FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

int FUNC10(struct file *file, struct dir_context *ctx,
				struct fscrypt_str *fstr)
{
	struct inode *inode = FUNC6(file);
	struct page *ipage = NULL;
	struct f2fs_dentry_ptr d;
	void *inline_dentry = NULL;
	int err;

	FUNC8(inode, &d, inline_dentry);

	if (ctx->pos == d.max)
		return 0;

	ipage = FUNC4(FUNC0(inode), inode->i_ino);
	if (FUNC1(ipage))
		return FUNC2(ipage);

	/*
	 * f2fs_readdir was protected by inode.i_rwsem, it is safe to access
	 * ipage without page's lock held.
	 */
	FUNC9(ipage);

	inline_dentry = FUNC7(inode, ipage);

	FUNC8(inode, &d, inline_dentry);

	err = FUNC3(ctx, &d, 0, fstr);
	if (!err)
		ctx->pos = d.max;

	FUNC5(ipage, 0);
	return err < 0 ? err : 0;
}