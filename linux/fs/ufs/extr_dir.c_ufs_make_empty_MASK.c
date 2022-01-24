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
struct ufs_dir_entry {int /*<<< orphan*/  d_name; void* d_reclen; void* d_ino; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_uspi; } ;
struct TYPE_3__ {unsigned int s_dirblksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 void* FUNC2 (struct super_block*,scalar_t__) ; 
 void* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,void*) ; 
 struct page* FUNC5 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (struct page*,int /*<<< orphan*/ ,unsigned int const) ; 
 int FUNC13 (struct page*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,struct ufs_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,struct ufs_dir_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

int FUNC17(struct inode * inode, struct inode *dir)
{
	struct super_block * sb = dir->i_sb;
	struct address_space *mapping = inode->i_mapping;
	struct page *page = FUNC5(mapping, 0);
	const unsigned int chunk_size = FUNC1(sb)->s_uspi->s_dirblksize;
	struct ufs_dir_entry * de;
	char *base;
	int err;

	if (!page)
		return -ENOMEM;

	err = FUNC13(page, 0, chunk_size);
	if (err) {
		FUNC16(page);
		goto fail;
	}

	FUNC6(page);
	base = (char*)FUNC9(page);
	FUNC8(base, 0, PAGE_SIZE);

	de = (struct ufs_dir_entry *) base;

	de->d_ino = FUNC3(sb, inode->i_ino);
	FUNC15(sb, de, inode->i_mode);
	FUNC14(sb, de, 1);
	de->d_reclen = FUNC2(sb, FUNC0(1));
	FUNC11 (de->d_name, ".");
	de = (struct ufs_dir_entry *)
		((char *)de + FUNC4(sb, de->d_reclen));
	de->d_ino = FUNC3(sb, dir->i_ino);
	FUNC15(sb, de, dir->i_mode);
	de->d_reclen = FUNC2(sb, chunk_size - FUNC0(1));
	FUNC14(sb, de, 2);
	FUNC11 (de->d_name, "..");
	FUNC7(page);

	err = FUNC12(page, 0, chunk_size);
fail:
	FUNC10(page);
	return err;
}