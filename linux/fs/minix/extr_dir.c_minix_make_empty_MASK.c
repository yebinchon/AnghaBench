#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct minix_sb_info {int s_dirsize; scalar_t__ s_version; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  inode; } ;
typedef  TYPE_1__ minix_dirent ;
typedef  TYPE_1__ minix3_dirent ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MINIX_V3 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,struct minix_sb_info*) ; 
 int FUNC6 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct minix_sb_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct inode *inode, struct inode *dir)
{
	struct page *page = FUNC1(inode->i_mapping, 0);
	struct minix_sb_info *sbi = FUNC7(inode->i_sb);
	char *kaddr;
	int err;

	if (!page)
		return -ENOMEM;
	err = FUNC6(page, 0, 2 * sbi->s_dirsize);
	if (err) {
		FUNC10(page);
		goto fail;
	}

	kaddr = FUNC2(page);
	FUNC4(kaddr, 0, PAGE_SIZE);

	if (sbi->s_version == MINIX_V3) {
		minix3_dirent *de3 = (minix3_dirent *)kaddr;

		de3->inode = inode->i_ino;
		FUNC9(de3->name, ".");
		de3 = FUNC5(de3, sbi);
		de3->inode = dir->i_ino;
		FUNC9(de3->name, "..");
	} else {
		minix_dirent *de = (minix_dirent *)kaddr;

		de->inode = inode->i_ino;
		FUNC9(de->name, ".");
		de = FUNC5(de, sbi);
		de->inode = dir->i_ino;
		FUNC9(de->name, "..");
	}
	FUNC3(kaddr);

	err = FUNC0(page, 0, 2 * sbi->s_dirsize);
fail:
	FUNC8(page);
	return err;
}