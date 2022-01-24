#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct minix_sb_info {scalar_t__ s_version; int /*<<< orphan*/  s_dirsize; } ;
struct minix_dir_entry {int /*<<< orphan*/  inode; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  inode; } ;
typedef  TYPE_2__ minix3_dirent ;
typedef  int loff_t ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ MINIX_V3 ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct page*,int,int /*<<< orphan*/ ) ; 
 struct minix_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

void FUNC10(struct minix_dir_entry *de, struct page *page,
	struct inode *inode)
{
	struct inode *dir = page->mapping->host;
	struct minix_sb_info *sbi = FUNC6(dir->i_sb);
	loff_t pos = FUNC8(page) +
			(char *)de-(char*)FUNC7(page);
	int err;

	FUNC3(page);

	err = FUNC5(page, pos, sbi->s_dirsize);
	if (err == 0) {
		if (sbi->s_version == MINIX_V3)
			((minix3_dirent *) de)->inode = inode->i_ino;
		else
			de->inode = inode->i_ino;
		err = FUNC1(page, pos, sbi->s_dirsize);
	} else {
		FUNC9(page);
	}
	FUNC2(page);
	dir->i_mtime = dir->i_ctime = FUNC0(dir);
	FUNC4(dir);
}