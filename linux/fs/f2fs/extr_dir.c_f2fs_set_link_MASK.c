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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;
struct f2fs_dir_entry {int /*<<< orphan*/  ino; } ;
typedef  enum page_type { ____Placeholder_page_type } page_type ;

/* Variables and functions */
 int DATA ; 
 int NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_dir_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

void FUNC9(struct inode *dir, struct f2fs_dir_entry *de,
		struct page *page, struct inode *inode)
{
	enum page_type type = FUNC2(dir) ? NODE : DATA;
	FUNC6(page);
	FUNC5(page, type, true, true);
	de->ino = FUNC0(inode->i_ino);
	FUNC7(de, inode->i_mode);
	FUNC8(page);

	dir->i_mtime = dir->i_ctime = FUNC1(dir);
	FUNC3(dir, false);
	FUNC4(page, 1);
}