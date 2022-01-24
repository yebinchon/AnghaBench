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
struct nilfs_dir_entry {scalar_t__ rec_len; int /*<<< orphan*/  inode; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct address_space*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct nilfs_dir_entry* FUNC6 (struct nilfs_dir_entry*) ; 
 int FUNC7 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 char* FUNC11 (struct page*) ; 

int FUNC12(struct nilfs_dir_entry *dir, struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = mapping->host;
	char *kaddr = FUNC11(page);
	unsigned int from, to;
	struct nilfs_dir_entry *de, *pde = NULL;
	int err;

	from = ((char *)dir - kaddr) & ~(FUNC3(inode) - 1);
	to = ((char *)dir - kaddr) + FUNC9(dir->rec_len);
	de = (struct nilfs_dir_entry *)(kaddr + from);

	while ((char *)de < (char *)dir) {
		if (de->rec_len == 0) {
			FUNC5(inode->i_sb,
				    "zero-length directory entry");
			err = -EIO;
			goto out;
		}
		pde = de;
		de = FUNC6(de);
	}
	if (pde)
		from = (char *)pde - (char *)FUNC11(page);
	FUNC2(page);
	err = FUNC7(page, from, to);
	FUNC0(err);
	if (pde)
		pde->rec_len = FUNC10(to - from);
	dir->inode = 0;
	FUNC4(page, mapping, from, to);
	inode->i_ctime = inode->i_mtime = FUNC1(inode);
out:
	FUNC8(page);
	return err;
}