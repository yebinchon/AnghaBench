#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct minix_sb_info {char* s_dirsize; scalar_t__ s_version; int /*<<< orphan*/  s_namelen; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;
struct TYPE_5__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_2__ minix_dirent ;
struct TYPE_6__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_3__ minix3_dirent ;
typedef  int loff_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ MINIX_V3 ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct page*,int,char*) ; 
 struct page* FUNC6 (struct inode*,unsigned long) ; 
 unsigned long FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (struct inode*,unsigned long) ; 
 char* FUNC14 (char*,struct minix_sb_info*) ; 
 int FUNC15 (struct page*,int,char*) ; 
 struct minix_sb_info* FUNC16 (struct super_block*) ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ,char const*,char*) ; 
 scalar_t__ FUNC18 (struct page*) ; 
 int FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

int FUNC21(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = FUNC4(dentry->d_parent);
	const char * name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct super_block * sb = dir->i_sb;
	struct minix_sb_info * sbi = FUNC16(sb);
	struct page *page = NULL;
	unsigned long npages = FUNC7(dir);
	unsigned long n;
	char *kaddr, *p;
	minix_dirent *de;
	minix3_dirent *de3;
	loff_t pos;
	int err;
	char *namx = NULL;
	__u32 inumber;

	/*
	 * We take care of directory expansion in the same loop
	 * This code plays outside i_size, so it locks the page
	 * to protect that region.
	 */
	for (n = 0; n <= npages; n++) {
		char *limit, *dir_end;

		page = FUNC6(dir, n);
		err = FUNC2(page);
		if (FUNC1(page))
			goto out;
		FUNC9(page);
		kaddr = (char*)FUNC18(page);
		dir_end = kaddr + FUNC13(dir, n);
		limit = kaddr + PAGE_SIZE - sbi->s_dirsize;
		for (p = kaddr; p <= limit; p = FUNC14(p, sbi)) {
			de = (minix_dirent *)p;
			de3 = (minix3_dirent *)p;
			if (sbi->s_version == MINIX_V3) {
				namx = de3->name;
				inumber = de3->inode;
		 	} else {
  				namx = de->name;
				inumber = de->inode;
			}
			if (p == dir_end) {
				/* We hit i_size */
				if (sbi->s_version == MINIX_V3)
					de3->inode = 0;
		 		else
					de->inode = 0;
				goto got_it;
			}
			if (!inumber)
				goto got_it;
			err = -EEXIST;
			if (FUNC17(namelen, sbi->s_namelen, name, namx))
				goto out_unlock;
		}
		FUNC20(page);
		FUNC8(page);
	}
	FUNC0();
	return -EINVAL;

got_it:
	pos = FUNC19(page) + p - (char *)FUNC18(page);
	err = FUNC15(page, pos, sbi->s_dirsize);
	if (err)
		goto out_unlock;
	FUNC11 (namx, name, namelen);
	if (sbi->s_version == MINIX_V3) {
		FUNC12 (namx + namelen, 0, sbi->s_dirsize - namelen - 4);
		de3->inode = inode->i_ino;
	} else {
		FUNC12 (namx + namelen, 0, sbi->s_dirsize - namelen - 2);
		de->inode = inode->i_ino;
	}
	err = FUNC5(page, pos, sbi->s_dirsize);
	dir->i_mtime = dir->i_ctime = FUNC3(dir);
	FUNC10(dir);
out_put:
	FUNC8(page);
out:
	return err;
out_unlock:
	FUNC20(page);
	goto out_put;
}