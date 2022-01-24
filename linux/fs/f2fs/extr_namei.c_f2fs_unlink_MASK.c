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
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct f2fs_dir_entry {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_dir_entry*,struct page*,struct inode*,struct inode*) ; 
 struct f2fs_dir_entry* FUNC12 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct inode *inode = FUNC5(dentry);
	struct f2fs_dir_entry *de;
	struct page *page;
	int err = -ENOENT;

	FUNC17(dir, dentry);

	if (FUNC19(FUNC10(sbi)))
		return -EIO;

	err = FUNC7(dir);
	if (err)
		return err;
	err = FUNC7(inode);
	if (err)
		return err;

	de = FUNC12(dir, &dentry->d_name, &page);
	if (!de) {
		if (FUNC3(page))
			err = FUNC4(page);
		goto fail;
	}

	FUNC9(sbi, true);

	FUNC13(sbi);
	err = FUNC8(sbi);
	if (err) {
		FUNC16(sbi);
		FUNC14(page, 0);
		goto fail;
	}
	FUNC11(de, page, dir, inode);
#ifdef CONFIG_UNICODE
	/* VFS negative dentries are incompatible with Encoding and
	 * Case-insensitiveness. Eventually we'll want avoid
	 * invalidating the dentries here, alongside with returning the
	 * negative dentries at f2fs_lookup(), when it is  better
	 * supported by the VFS for the CI case.
	 */
	if (IS_CASEFOLDED(dir))
		d_invalidate(dentry);
#endif
	FUNC16(sbi);

	if (FUNC2(dir))
		FUNC15(sbi->sb, 1);
fail:
	FUNC18(inode, err);
	return err;
}