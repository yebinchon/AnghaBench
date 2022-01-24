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
struct sysv_dir_entry {int /*<<< orphan*/  name; void* inode; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SYSV_DIRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

int FUNC12(struct inode *inode, struct inode *dir)
{
	struct page *page = FUNC3(inode->i_mapping, 0);
	struct sysv_dir_entry * de;
	char *base;
	int err;

	if (!page)
		return -ENOMEM;
	err = FUNC10(page, 0, 2 * SYSV_DIRSIZE);
	if (err) {
		FUNC11(page);
		goto fail;
	}
	FUNC4(page);

	base = (char*)FUNC7(page);
	FUNC6(base, 0, PAGE_SIZE);

	de = (struct sysv_dir_entry *) base;
	de->inode = FUNC1(FUNC0(inode->i_sb), inode->i_ino);
	FUNC9(de->name,".");
	de++;
	de->inode = FUNC1(FUNC0(inode->i_sb), dir->i_ino);
	FUNC9(de->name,"..");

	FUNC5(page);
	err = FUNC2(page, 0, 2 * SYSV_DIRSIZE);
fail:
	FUNC8(page);
	return err;
}