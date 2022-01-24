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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct fscrypt_name {int dummy; } ;
struct f2fs_dir_entry {int dummy; } ;
struct TYPE_2__ {unsigned int i_current_depth; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 unsigned int MAX_DIR_HASH_DEPTH ; 
 int /*<<< orphan*/  current ; 
 unsigned long FUNC3 (struct inode*) ; 
 struct f2fs_dir_entry* FUNC4 (struct inode*,struct fscrypt_name*,struct page**) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct f2fs_dir_entry* FUNC8 (struct inode*,unsigned int,struct fscrypt_name*,struct page**) ; 
 scalar_t__ FUNC9 (int) ; 

struct f2fs_dir_entry *FUNC10(struct inode *dir,
			struct fscrypt_name *fname, struct page **res_page)
{
	unsigned long npages = FUNC3(dir);
	struct f2fs_dir_entry *de = NULL;
	unsigned int max_depth;
	unsigned int level;

	if (FUNC5(dir)) {
		*res_page = NULL;
		de = FUNC4(dir, fname, res_page);
		goto out;
	}

	if (npages == 0) {
		*res_page = NULL;
		goto out;
	}

	max_depth = FUNC0(dir)->i_current_depth;
	if (FUNC9(max_depth > MAX_DIR_HASH_DEPTH)) {
		FUNC7(FUNC1(dir), "Corrupted max_depth of %lu: %u",
			  dir->i_ino, max_depth);
		max_depth = MAX_DIR_HASH_DEPTH;
		FUNC6(dir, max_depth);
	}

	for (level = 0; level < max_depth; level++) {
		*res_page = NULL;
		de = FUNC8(dir, level, fname, res_page);
		if (de || FUNC2(*res_page))
			break;
	}
out:
	/* This is to increase the speed of f2fs_create */
	if (!de)
		FUNC0(dir)->task = current;
	return de;
}