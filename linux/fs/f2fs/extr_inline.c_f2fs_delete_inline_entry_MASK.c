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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct f2fs_dir_entry {int /*<<< orphan*/  name_len; } ;
struct f2fs_dentry_ptr {int /*<<< orphan*/  bitmap; struct f2fs_dir_entry* dentry; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

void FUNC12(struct f2fs_dir_entry *dentry, struct page *page,
					struct inode *dir, struct inode *inode)
{
	struct f2fs_dentry_ptr d;
	void *inline_dentry;
	int slots = FUNC0(FUNC8(dentry->name_len));
	unsigned int bit_pos;
	int i;

	FUNC9(page);
	FUNC6(page, NODE, true, true);

	inline_dentry = FUNC7(dir, page);
	FUNC10(dir, &d, inline_dentry);

	bit_pos = dentry - d.dentry;
	for (i = 0; i < slots; i++)
		FUNC1(bit_pos + i, d.bitmap);

	FUNC11(page);
	FUNC5(page, 1);

	dir->i_ctime = dir->i_mtime = FUNC2(dir);
	FUNC4(dir, false);

	if (inode)
		FUNC3(dir, inode);
}