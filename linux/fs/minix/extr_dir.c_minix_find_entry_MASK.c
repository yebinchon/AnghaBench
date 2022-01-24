#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct minix_sb_info {char* s_dirsize; scalar_t__ s_version; int /*<<< orphan*/  s_namelen; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_5__ {char* name; int len; } ;
struct dentry {int /*<<< orphan*/  d_parent; TYPE_1__ d_name; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  inode; } ;
typedef  TYPE_2__ minix_dirent ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  inode; } ;
typedef  TYPE_3__ minix3_dirent ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ MINIX_V3 ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct inode*,unsigned long) ; 
 unsigned long FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct inode*,unsigned long) ; 
 char* FUNC6 (char*,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,char const*,char*) ; 
 scalar_t__ FUNC9 (struct page*) ; 

minix_dirent *FUNC10(struct dentry *dentry, struct page **res_page)
{
	const char * name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct inode * dir = FUNC1(dentry->d_parent);
	struct super_block * sb = dir->i_sb;
	struct minix_sb_info * sbi = FUNC7(sb);
	unsigned long n;
	unsigned long npages = FUNC3(dir);
	struct page *page = NULL;
	char *p;

	char *namx;
	__u32 inumber;
	*res_page = NULL;

	for (n = 0; n < npages; n++) {
		char *kaddr, *limit;

		page = FUNC2(dir, n);
		if (FUNC0(page))
			continue;

		kaddr = (char*)FUNC9(page);
		limit = kaddr + FUNC5(dir, n) - sbi->s_dirsize;
		for (p = kaddr; p <= limit; p = FUNC6(p, sbi)) {
			if (sbi->s_version == MINIX_V3) {
				minix3_dirent *de3 = (minix3_dirent *)p;
				namx = de3->name;
				inumber = de3->inode;
 			} else {
				minix_dirent *de = (minix_dirent *)p;
				namx = de->name;
				inumber = de->inode;
			}
			if (!inumber)
				continue;
			if (FUNC8(namelen, sbi->s_namelen, name, namx))
				goto found;
		}
		FUNC4(page);
	}
	return NULL;

found:
	*res_page = page;
	return (minix_dirent *)p;
}