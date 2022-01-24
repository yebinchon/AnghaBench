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
struct sysv_dir_entry {scalar_t__ inode; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
typedef  int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYSV_DIRSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 
 int FUNC8 (struct page*,int,int /*<<< orphan*/ ) ; 

int FUNC9(struct sysv_dir_entry *de, struct page *page)
{
	struct inode *inode = page->mapping->host;
	char *kaddr = (char*)FUNC6(page);
	loff_t pos = FUNC7(page) + (char *)de - kaddr;
	int err;

	FUNC4(page);
	err = FUNC8(page, pos, SYSV_DIRSIZE);
	FUNC0(err);
	de->inode = 0;
	err = FUNC2(page, pos, SYSV_DIRSIZE);
	FUNC3(page);
	inode->i_ctime = inode->i_mtime = FUNC1(inode);
	FUNC5(inode);
	return err;
}