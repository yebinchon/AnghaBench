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
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct fscrypt_name {int /*<<< orphan*/  disk_name; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct f2fs_dentry_ptr {int dummy; } ;
typedef  int /*<<< orphan*/  f2fs_hash_t ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qstr FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct qstr*,struct fscrypt_name*) ; 
 struct f2fs_dir_entry* FUNC4 (struct fscrypt_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct f2fs_dentry_ptr*) ; 
 struct page* FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

struct f2fs_dir_entry *FUNC10(struct inode *dir,
			struct fscrypt_name *fname, struct page **res_page)
{
	struct f2fs_sb_info *sbi = FUNC0(dir->i_sb);
	struct qstr name = FUNC1(&fname->disk_name);
	struct f2fs_dir_entry *de;
	struct f2fs_dentry_ptr d;
	struct page *ipage;
	void *inline_dentry;
	f2fs_hash_t namehash;

	ipage = FUNC5(sbi, dir->i_ino);
	if (FUNC2(ipage)) {
		*res_page = ipage;
		return NULL;
	}

	namehash = FUNC3(dir, &name, fname);

	inline_dentry = FUNC7(dir, ipage);

	FUNC8(dir, &d, inline_dentry);
	de = FUNC4(fname, namehash, NULL, &d);
	FUNC9(ipage);
	if (de)
		*res_page = ipage;
	else
		FUNC6(ipage, 0);

	return de;
}