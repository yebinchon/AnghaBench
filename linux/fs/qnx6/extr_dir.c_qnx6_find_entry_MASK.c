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
struct super_block {int dummy; } ;
struct qnx6_long_dir_entry {int dummy; } ;
struct qnx6_inode_info {unsigned long i_dir_start_lookup; } ;
struct qnx6_dir_entry {int de_size; } ;
struct page {int dummy; } ;
struct inode {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct qnx6_inode_info* FUNC1 (struct inode*) ; 
 int QNX6_SHORT_NAME_MAX ; 
 unsigned long FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct page* FUNC6 (struct inode*,unsigned long) ; 
 unsigned int FUNC7 (int,char const*,struct qnx6_long_dir_entry*,struct inode*) ; 
 unsigned int FUNC8 (struct super_block*,int,char const*,struct qnx6_dir_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

unsigned FUNC10(int len, struct inode *dir, const char *name,
			 struct page **res_page)
{
	struct super_block *s = dir->i_sb;
	struct qnx6_inode_info *ei = FUNC1(dir);
	struct page *page = NULL;
	unsigned long start, n;
	unsigned long npages = FUNC2(dir);
	unsigned ino;
	struct qnx6_dir_entry *de;
	struct qnx6_long_dir_entry *lde;

	*res_page = NULL;

	if (npages == 0)
		return 0;
	start = ei->i_dir_start_lookup;
	if (start >= npages)
		start = 0;
	n = start;

	do {
		page = FUNC6(dir, n);
		if (!FUNC0(page)) {
			int limit = FUNC3(dir, n);
			int i;

			de = (struct qnx6_dir_entry *)FUNC4(page);
			for (i = 0; i < limit; i++, de++) {
				if (len <= QNX6_SHORT_NAME_MAX) {
					/* short filename */
					if (len != de->de_size)
						continue;
					ino = FUNC8(s, len, name, de);
					if (ino)
						goto found;
				} else if (de->de_size == 0xff) {
					/* deal with long filename */
					lde = (struct qnx6_long_dir_entry *)de;
					ino = FUNC7(len,
								name, lde, dir);
					if (ino)
						goto found;
				} else
					FUNC5("undefined filename size in inode.\n");
			}
			FUNC9(page);
		}

		if (++n >= npages)
			n = 0;
	} while (n != start);
	return 0;

found:
	*res_page = page;
	ei->i_dir_start_lookup = n;
	return ino;
}