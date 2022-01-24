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
struct sysv_dir_entry {scalar_t__ inode; int /*<<< orphan*/  name; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int SYSV_DIRSIZE ; 
 int /*<<< orphan*/  SYSV_NAMELEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct page*,int,int) ; 
 struct page* FUNC8 (struct inode*,unsigned long) ; 
 unsigned long FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int FUNC17 (struct page*) ; 
 int FUNC18 (struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

int FUNC20(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = FUNC6(dentry->d_parent);
	const char * name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct page *page = NULL;
	struct sysv_dir_entry * de;
	unsigned long npages = FUNC9(dir);
	unsigned long n;
	char *kaddr;
	loff_t pos;
	int err;

	/* We take care of directory expansion in the same loop */
	for (n = 0; n <= npages; n++) {
		page = FUNC8(dir, n);
		err = FUNC2(page);
		if (FUNC1(page))
			goto out;
		kaddr = (char*)FUNC16(page);
		de = (struct sysv_dir_entry *)kaddr;
		kaddr += PAGE_SIZE - SYSV_DIRSIZE;
		while ((char *)de <= kaddr) {
			if (!de->inode)
				goto got_it;
			err = -EEXIST;
			if (FUNC15(namelen, SYSV_NAMELEN, name, de->name)) 
				goto out_page;
			de++;
		}
		FUNC10(page);
	}
	FUNC0();
	return -EINVAL;

got_it:
	pos = FUNC17(page) +
			(char*)de - (char*)FUNC16(page);
	FUNC11(page);
	err = FUNC18(page, pos, SYSV_DIRSIZE);
	if (err)
		goto out_unlock;
	FUNC13 (de->name, name, namelen);
	FUNC14 (de->name + namelen, 0, SYSV_DIRSIZE - namelen - 2);
	de->inode = FUNC4(FUNC3(inode->i_sb), inode->i_ino);
	err = FUNC7(page, pos, SYSV_DIRSIZE);
	dir->i_mtime = dir->i_ctime = FUNC5(dir);
	FUNC12(dir);
out_page:
	FUNC10(page);
out:
	return err;
out_unlock:
	FUNC19(page);
	goto out_page;
}