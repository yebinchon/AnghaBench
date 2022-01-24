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
struct minix_sb_info {unsigned int s_dirsize; scalar_t__ s_version; } ;
struct minix_dir_entry {scalar_t__ inode; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {scalar_t__ inode; } ;
typedef  TYPE_2__ minix3_dirent ;
typedef  int loff_t ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ MINIX_V3 ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct page*,int,unsigned int) ; 
 struct minix_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

int FUNC10(struct minix_dir_entry *de, struct page *page)
{
	struct inode *inode = page->mapping->host;
	char *kaddr = FUNC7(page);
	loff_t pos = FUNC8(page) + (char*)de - kaddr;
	struct minix_sb_info *sbi = FUNC6(inode->i_sb);
	unsigned len = sbi->s_dirsize;
	int err;

	FUNC3(page);
	err = FUNC5(page, pos, len);
	if (err == 0) {
		if (sbi->s_version == MINIX_V3)
			((minix3_dirent *) de)->inode = 0;
		else
			de->inode = 0;
		err = FUNC1(page, pos, len);
	} else {
		FUNC9(page);
	}
	FUNC2(page);
	inode->i_ctime = inode->i_mtime = FUNC0(inode);
	FUNC4(inode);
	return err;
}