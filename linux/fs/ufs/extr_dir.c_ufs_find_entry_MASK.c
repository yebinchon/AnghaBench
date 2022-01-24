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
struct ufs_inode_info {unsigned long i_dir_start_lookup; } ;
struct ufs_dir_entry {int dummy; } ;
struct super_block {int dummy; } ;
struct qstr {unsigned char* name; int len; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 unsigned int FUNC2 (int) ; 
 struct ufs_inode_info* FUNC3 (struct inode*) ; 
 int UFS_MAXNAMLEN ; 
 unsigned long FUNC4 (struct inode*) ; 
 char* FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct inode*,unsigned long) ; 
 unsigned int FUNC7 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC8 (struct super_block*,int,unsigned char const*,struct ufs_dir_entry*) ; 
 struct ufs_dir_entry* FUNC9 (struct super_block*,struct ufs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

struct ufs_dir_entry *FUNC11(struct inode *dir, const struct qstr *qstr,
				     struct page **res_page)
{
	struct super_block *sb = dir->i_sb;
	const unsigned char *name = qstr->name;
	int namelen = qstr->len;
	unsigned reclen = FUNC2(namelen);
	unsigned long start, n;
	unsigned long npages = FUNC4(dir);
	struct page *page = NULL;
	struct ufs_inode_info *ui = FUNC3(dir);
	struct ufs_dir_entry *de;

	FUNC1("ENTER, dir_ino %lu, name %s, namlen %u\n", dir->i_ino, name, namelen);

	if (npages == 0 || namelen > UFS_MAXNAMLEN)
		goto out;

	/* OFFSET_CACHE */
	*res_page = NULL;

	start = ui->i_dir_start_lookup;

	if (start >= npages)
		start = 0;
	n = start;
	do {
		char *kaddr;
		page = FUNC6(dir, n);
		if (!FUNC0(page)) {
			kaddr = FUNC5(page);
			de = (struct ufs_dir_entry *) kaddr;
			kaddr += FUNC7(dir, n) - reclen;
			while ((char *) de <= kaddr) {
				if (FUNC8(sb, namelen, name, de))
					goto found;
				de = FUNC9(sb, de);
			}
			FUNC10(page);
		}
		if (++n >= npages)
			n = 0;
	} while (n != start);
out:
	return NULL;

found:
	*res_page = page;
	ui->i_dir_start_lookup = n;
	return de;
}