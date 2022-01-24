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
struct sysv_dir_entry {int /*<<< orphan*/  inode; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
typedef  int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYSV_DIRSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 int FUNC10 (struct page*,int,int /*<<< orphan*/ ) ; 

void FUNC11(struct sysv_dir_entry *de, struct page *page,
	struct inode *inode)
{
	struct inode *dir = page->mapping->host;
	loff_t pos = FUNC9(page) +
			(char *)de-(char*)FUNC8(page);
	int err;

	FUNC6(page);
	err = FUNC10(page, pos, SYSV_DIRSIZE);
	FUNC0(err);
	de->inode = FUNC2(FUNC1(inode->i_sb), inode->i_ino);
	err = FUNC4(page, pos, SYSV_DIRSIZE);
	FUNC5(page);
	dir->i_mtime = dir->i_ctime = FUNC3(dir);
	FUNC7(dir);
}