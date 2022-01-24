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
struct inode {int dummy; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dummy; } ;
typedef  int /*<<< orphan*/  f2fs_hash_t ;

/* Variables and functions */
 struct f2fs_dir_entry* FUNC0 (struct fscrypt_name*,int /*<<< orphan*/ ,int*,struct f2fs_dentry_ptr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ; 
 scalar_t__ FUNC2 (struct page*) ; 

__attribute__((used)) static struct f2fs_dir_entry *FUNC3(struct inode *dir,
				struct page *dentry_page,
				struct fscrypt_name *fname,
				f2fs_hash_t namehash,
				int *max_slots,
				struct page **res_page)
{
	struct f2fs_dentry_block *dentry_blk;
	struct f2fs_dir_entry *de;
	struct f2fs_dentry_ptr d;

	dentry_blk = (struct f2fs_dentry_block *)FUNC2(dentry_page);

	FUNC1(dir, &d, dentry_blk);
	de = FUNC0(fname, namehash, max_slots, &d);
	if (de)
		*res_page = dentry_page;

	return de;
}