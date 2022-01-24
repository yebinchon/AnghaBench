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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct f2fs_dir_entry {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_INLINE_DOTS ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct qstr FUNC3 (char*,int) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 int FUNC7 (struct inode*,struct qstr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f2fs_dir_entry* FUNC8 (struct inode*,struct qstr*,struct page**) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, nid_t pino)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct qstr dot = FUNC3(".", 1);
	struct qstr dotdot = FUNC3("..", 2);
	struct f2fs_dir_entry *de;
	struct page *page;
	int err = 0;

	if (FUNC12(sbi->sb)) {
		FUNC9(sbi, "skip recovering inline_dots inode (ino:%lu, pino:%u) in readonly mountpoint",
			  dir->i_ino, pino);
		return 0;
	}

	err = FUNC5(dir);
	if (err)
		return err;

	FUNC6(sbi, true);

	FUNC10(sbi);

	de = FUNC8(dir, &dot, &page);
	if (de) {
		FUNC11(page, 0);
	} else if (FUNC1(page)) {
		err = FUNC2(page);
		goto out;
	} else {
		err = FUNC7(dir, &dot, NULL, dir->i_ino, S_IFDIR);
		if (err)
			goto out;
	}

	de = FUNC8(dir, &dotdot, &page);
	if (de)
		FUNC11(page, 0);
	else if (FUNC1(page))
		err = FUNC2(page);
	else
		err = FUNC7(dir, &dotdot, NULL, pino, S_IFDIR);
out:
	if (!err)
		FUNC4(dir, FI_INLINE_DOTS);

	FUNC13(sbi);
	return err;
}