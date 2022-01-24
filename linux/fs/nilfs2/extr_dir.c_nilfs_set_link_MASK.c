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
struct page {struct address_space* mapping; } ;
struct nilfs_dir_entry {int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct address_space*,unsigned int,unsigned int) ; 
 int FUNC5 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_dir_entry*,struct inode*) ; 
 scalar_t__ FUNC9 (struct page*) ; 

void FUNC10(struct inode *dir, struct nilfs_dir_entry *de,
		    struct page *page, struct inode *inode)
{
	unsigned int from = (char *)de - (char *)FUNC9(page);
	unsigned int to = from + FUNC7(de->rec_len);
	struct address_space *mapping = page->mapping;
	int err;

	FUNC3(page);
	err = FUNC5(page, from, to);
	FUNC0(err);
	de->inode = FUNC1(inode->i_ino);
	FUNC8(de, inode);
	FUNC4(page, mapping, from, to);
	FUNC6(page);
	dir->i_mtime = dir->i_ctime = FUNC2(dir);
}