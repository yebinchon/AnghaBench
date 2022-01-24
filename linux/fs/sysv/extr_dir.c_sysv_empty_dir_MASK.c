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
struct sysv_dir_entry {scalar_t__ inode; char* name; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SYSV_DIRSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct inode*,unsigned long) ; 
 unsigned long FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 

int FUNC7(struct inode * inode)
{
	struct super_block *sb = inode->i_sb;
	struct page *page = NULL;
	unsigned long i, npages = FUNC4(inode);

	for (i = 0; i < npages; i++) {
		char *kaddr;
		struct sysv_dir_entry * de;
		page = FUNC3(inode, i);

		if (FUNC0(page))
			continue;

		kaddr = (char *)FUNC6(page);
		de = (struct sysv_dir_entry *)kaddr;
		kaddr += PAGE_SIZE-SYSV_DIRSIZE;

		for ( ;(char *)de <= kaddr; de++) {
			if (!de->inode)
				continue;
			/* check for . and .. */
			if (de->name[0] != '.')
				goto not_empty;
			if (!de->name[1]) {
				if (de->inode == FUNC2(FUNC1(sb),
							inode->i_ino))
					continue;
				goto not_empty;
			}
			if (de->name[1] != '.' || de->name[2])
				goto not_empty;
		}
		FUNC5(page);
	}
	return 1;

not_empty:
	FUNC5(page);
	return 0;
}