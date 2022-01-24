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
struct page {unsigned int i_ino; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct inode {unsigned int i_ino; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int /*<<< orphan*/  ino; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int nid_t ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int EPERM ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ F2FS_NAME_LEN ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct f2fs_dir_entry* FUNC10 (struct page*,struct fscrypt_name*,struct page**) ; 
 int FUNC11 (struct page*,unsigned int) ; 
 struct dentry* FUNC12 (struct page*,struct dentry*) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 struct page* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,struct page*) ; 
 int FUNC19 (struct page*,struct dentry*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,struct dentry*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,struct dentry*,unsigned int) ; 

__attribute__((used)) static struct dentry *FUNC24(struct inode *dir, struct dentry *dentry,
		unsigned int flags)
{
	struct inode *inode = NULL;
	struct f2fs_dir_entry *de;
	struct page *page;
	struct dentry *new;
	nid_t ino = -1;
	int err = 0;
	unsigned int root_ino = FUNC2(FUNC1(dir));
	struct fscrypt_name fname;

	FUNC23(dir, dentry, flags);

	if (dentry->d_name.len > F2FS_NAME_LEN) {
		err = -ENAMETOOLONG;
		goto out;
	}

	err = FUNC19(dir, dentry, &fname);
	if (err == -ENOENT)
		goto out_splice;
	if (err)
		goto out;
	de = FUNC10(dir, &fname, &page);
	FUNC17(&fname);

	if (!de) {
		if (FUNC5(page)) {
			err = FUNC6(page);
			goto out;
		}
		goto out_splice;
	}

	ino = FUNC21(de->ino);
	FUNC15(page, 0);

	inode = FUNC14(dir->i_sb, ino);
	if (FUNC5(inode)) {
		err = FUNC6(inode);
		goto out;
	}

	if ((dir->i_ino == root_ino) && FUNC13(dir)) {
		err = FUNC11(dir, root_ino);
		if (err)
			goto out_iput;
	}

	if (FUNC13(inode)) {
		err = FUNC11(inode, dir->i_ino);
		if (err)
			goto out_iput;
	}
	if (FUNC4(dir) &&
	    (FUNC8(inode->i_mode) || FUNC9(inode->i_mode)) &&
	    !FUNC18(dir, inode)) {
		FUNC16(FUNC1(inode), "Inconsistent encryption contexts: %lu/%lu",
			  dir->i_ino, inode->i_ino);
		err = -EPERM;
		goto out_iput;
	}
out_splice:
#ifdef CONFIG_UNICODE
	if (!inode && IS_CASEFOLDED(dir)) {
		/* Eventually we want to call d_add_ci(dentry, NULL)
		 * for negative dentries in the encoding case as
		 * well.  For now, prevent the negative dentry
		 * from being cached.
		 */
		trace_f2fs_lookup_end(dir, dentry, ino, err);
		return NULL;
	}
#endif
	new = FUNC12(inode, dentry);
	err = FUNC7(new);
	FUNC22(dir, dentry, ino, err);
	return new;
out_iput:
	FUNC20(inode);
out:
	FUNC22(dir, dentry, ino, err);
	return FUNC0(err);
}