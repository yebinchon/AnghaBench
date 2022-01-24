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
typedef  int /*<<< orphan*/  umode_t ;
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_2__ {int /*<<< orphan*/ * task; } ;

/* Variables and functions */
 int EEXIST ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct f2fs_dir_entry* FUNC3 (struct inode*,struct fscrypt_name*,struct page**) ; 
 int /*<<< orphan*/ * current ; 
 int FUNC4 (struct inode*,struct fscrypt_name*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fscrypt_name*) ; 
 int FUNC7 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct fscrypt_name*) ; 

int FUNC8(struct inode *dir, const struct qstr *name,
				struct inode *inode, nid_t ino, umode_t mode)
{
	struct fscrypt_name fname;
	struct page *page = NULL;
	struct f2fs_dir_entry *de = NULL;
	int err;

	err = FUNC7(dir, name, 0, &fname);
	if (err)
		return err;

	/*
	 * An immature stakable filesystem shows a race condition between lookup
	 * and create. If we have same task when doing lookup and create, it's
	 * definitely fine as expected by VFS normally. Otherwise, let's just
	 * verify on-disk dentry one more time, which guarantees filesystem
	 * consistency more.
	 */
	if (current != FUNC0(dir)->task) {
		de = FUNC3(dir, &fname, &page);
		FUNC0(dir)->task = NULL;
	}
	if (de) {
		FUNC5(page, 0);
		err = -EEXIST;
	} else if (FUNC1(page)) {
		err = FUNC2(page);
	} else {
		err = FUNC4(dir, &fname, inode, ino, mode);
	}
	FUNC6(&fname);
	return err;
}