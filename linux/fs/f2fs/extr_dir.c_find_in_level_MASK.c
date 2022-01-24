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
struct qstr {int /*<<< orphan*/  len; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int /*<<< orphan*/  disk_name; } ;
struct f2fs_dir_entry {int dummy; } ;
typedef  scalar_t__ f2fs_hash_t ;
struct TYPE_2__ {scalar_t__ chash; unsigned int clevel; int /*<<< orphan*/  i_dir_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct qstr FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*,struct qstr*,struct fscrypt_name*) ; 
 struct page* FUNC9 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 struct f2fs_dir_entry* FUNC11 (struct inode*,struct page*,struct fscrypt_name*,scalar_t__,int*,struct page**) ; 
 unsigned int FUNC12 (scalar_t__) ; 

__attribute__((used)) static struct f2fs_dir_entry *FUNC13(struct inode *dir,
					unsigned int level,
					struct fscrypt_name *fname,
					struct page **res_page)
{
	struct qstr name = FUNC1(&fname->disk_name);
	int s = FUNC2(name.len);
	unsigned int nbucket, nblock;
	unsigned int bidx, end_block;
	struct page *dentry_page;
	struct f2fs_dir_entry *de = NULL;
	bool room = false;
	int max_slots;
	f2fs_hash_t namehash = FUNC8(dir, &name, fname);

	nbucket = FUNC7(level, FUNC0(dir)->i_dir_level);
	nblock = FUNC5(level);

	bidx = FUNC6(level, FUNC0(dir)->i_dir_level,
					FUNC12(namehash) % nbucket);
	end_block = bidx + nblock;

	for (; bidx < end_block; bidx++) {
		/* no need to allocate new dentry pages to all the indices */
		dentry_page = FUNC9(dir, bidx);
		if (FUNC3(dentry_page)) {
			if (FUNC4(dentry_page) == -ENOENT) {
				room = true;
				continue;
			} else {
				*res_page = dentry_page;
				break;
			}
		}

		de = FUNC11(dir, dentry_page, fname, namehash,
							&max_slots, res_page);
		if (de)
			break;

		if (max_slots >= s)
			room = true;
		FUNC10(dentry_page, 0);
	}

	if (!de && room && FUNC0(dir)->chash != namehash) {
		FUNC0(dir)->chash = namehash;
		FUNC0(dir)->clevel = level;
	}

	return de;
}