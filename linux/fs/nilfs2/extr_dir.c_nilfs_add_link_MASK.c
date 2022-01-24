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
struct page {int /*<<< orphan*/  mapping; } ;
struct nilfs_dir_entry {scalar_t__ rec_len; int name_len; scalar_t__ inode; int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {unsigned char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct page*) ; 
 void* FUNC2 (int) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 unsigned int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 struct page* FUNC13 (struct inode*,unsigned long) ; 
 int FUNC14 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (int,unsigned char const*,struct nilfs_dir_entry*) ; 
 int FUNC17 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 unsigned short FUNC19 (scalar_t__) ; 
 void* FUNC20 (unsigned short) ; 
 int /*<<< orphan*/  FUNC21 (struct nilfs_dir_entry*,struct inode*) ; 
 char* FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 

int FUNC24(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = FUNC6(dentry->d_parent);
	const unsigned char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	unsigned int chunk_size = FUNC10(dir);
	unsigned int reclen = FUNC2(namelen);
	unsigned short rec_len, name_len;
	struct page *page = NULL;
	struct nilfs_dir_entry *de;
	unsigned long npages = FUNC7(dir);
	unsigned long n;
	char *kaddr;
	unsigned int from, to;
	int err;

	/*
	 * We take care of directory expansion in the same loop.
	 * This code plays outside i_size, so it locks the page
	 * to protect that region.
	 */
	for (n = 0; n <= npages; n++) {
		char *dir_end;

		page = FUNC13(dir, n);
		err = FUNC3(page);
		if (FUNC1(page))
			goto out;
		FUNC8(page);
		kaddr = FUNC22(page);
		dir_end = kaddr + FUNC14(dir, n);
		de = (struct nilfs_dir_entry *)kaddr;
		kaddr += PAGE_SIZE - reclen;
		while ((char *)de <= kaddr) {
			if ((char *)de == dir_end) {
				/* We hit i_size */
				name_len = 0;
				rec_len = chunk_size;
				de->rec_len = FUNC20(chunk_size);
				de->inode = 0;
				goto got_it;
			}
			if (de->rec_len == 0) {
				FUNC12(dir->i_sb,
					    "zero-length directory entry");
				err = -EIO;
				goto out_unlock;
			}
			err = -EEXIST;
			if (FUNC16(namelen, name, de))
				goto out_unlock;
			name_len = FUNC2(de->name_len);
			rec_len = FUNC19(de->rec_len);
			if (!de->inode && rec_len >= reclen)
				goto got_it;
			if (rec_len >= name_len + reclen)
				goto got_it;
			de = (struct nilfs_dir_entry *)((char *)de + rec_len);
		}
		FUNC23(page);
		FUNC18(page);
	}
	FUNC0();
	return -EINVAL;

got_it:
	from = (char *)de - (char *)FUNC22(page);
	to = from + rec_len;
	err = FUNC17(page, from, to);
	if (err)
		goto out_unlock;
	if (de->inode) {
		struct nilfs_dir_entry *de1;

		de1 = (struct nilfs_dir_entry *)((char *)de + name_len);
		de1->rec_len = FUNC20(rec_len - name_len);
		de->rec_len = FUNC20(name_len);
		de = de1;
	}
	de->name_len = namelen;
	FUNC9(de->name, name, namelen);
	de->inode = FUNC4(inode->i_ino);
	FUNC21(de, inode);
	FUNC11(page, page->mapping, from, to);
	dir->i_mtime = dir->i_ctime = FUNC5(dir);
	FUNC15(dir);
	/* OFFSET_CACHE */
out_put:
	FUNC18(page);
out:
	return err;
out_unlock:
	FUNC23(page);
	goto out_put;
}