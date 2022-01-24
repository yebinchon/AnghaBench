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
struct nilfs_dir_entry {scalar_t__ rec_len; scalar_t__ inode; char* name; int name_len; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,struct nilfs_dir_entry*) ; 
 struct page* FUNC5 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC6 (struct inode*,unsigned long) ; 
 struct nilfs_dir_entry* FUNC7 (struct nilfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 char* FUNC9 (struct page*) ; 

int FUNC10(struct inode *inode)
{
	struct page *page = NULL;
	unsigned long i, npages = FUNC3(inode);

	for (i = 0; i < npages; i++) {
		char *kaddr;
		struct nilfs_dir_entry *de;

		page = FUNC5(inode, i);
		if (FUNC0(page))
			continue;

		kaddr = FUNC9(page);
		de = (struct nilfs_dir_entry *)kaddr;
		kaddr += FUNC6(inode, i) - FUNC1(1);

		while ((char *)de <= kaddr) {
			if (de->rec_len == 0) {
				FUNC4(inode->i_sb,
					    "zero-length directory entry (kaddr=%p, de=%p)",
					    kaddr, de);
				goto not_empty;
			}
			if (de->inode != 0) {
				/* check for . and .. */
				if (de->name[0] != '.')
					goto not_empty;
				if (de->name_len > 2)
					goto not_empty;
				if (de->name_len < 2) {
					if (de->inode !=
					    FUNC2(inode->i_ino))
						goto not_empty;
				} else if (de->name[1] != '.')
					goto not_empty;
			}
			de = FUNC7(de);
		}
		FUNC8(page);
	}
	return 1;

not_empty:
	FUNC8(page);
	return 0;
}