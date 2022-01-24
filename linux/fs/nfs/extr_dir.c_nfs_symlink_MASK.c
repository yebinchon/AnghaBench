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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int (* symlink ) (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_USER ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 unsigned int PAGE_SIZE ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 TYPE_2__* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 unsigned int FUNC12 (char const*) ; 
 int FUNC13 (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

int FUNC17(struct inode *dir, struct dentry *dentry, const char *symname)
{
	struct page *page;
	char *kaddr;
	struct iattr attr;
	unsigned int pathlen = FUNC12(symname);
	int error;

	FUNC7(VFS, "NFS: symlink(%s/%lu, %pd, %s)\n", dir->i_sb->s_id,
		dir->i_ino, dentry, symname);

	if (pathlen > PAGE_SIZE)
		return -ENAMETOOLONG;

	attr.ia_mode = S_IFLNK | S_IRWXUGO;
	attr.ia_valid = ATTR_MODE;

	page = FUNC4(GFP_USER);
	if (!page)
		return -ENOMEM;

	kaddr = FUNC10(page);
	FUNC8(kaddr, symname, pathlen);
	if (pathlen < PAGE_SIZE)
		FUNC9(kaddr + pathlen, 0, PAGE_SIZE - pathlen);

	FUNC14(dir, dentry);
	error = FUNC0(dir)->symlink(dir, dentry, page, pathlen, &attr);
	FUNC15(dir, dentry, error);
	if (error != 0) {
		FUNC7(VFS, "NFS: symlink(%s/%lu, %pd, %s) error %d\n",
			dir->i_sb->s_id, dir->i_ino,
			dentry, symname, error);
		FUNC5(dentry);
		FUNC2(page);
		return error;
	}

	/*
	 * No big deal if we can't add this page to the page cache here.
	 * READLINK will get the missing page from the server if needed.
	 */
	if (!FUNC3(page, FUNC6(dentry)->i_mapping, 0,
							GFP_KERNEL)) {
		FUNC1(page);
		FUNC16(page);
		/*
		 * add_to_page_cache_lru() grabs an extra page refcount.
		 * Drop it here to avoid leaking this page later.
		 */
		FUNC11(page);
	} else
		FUNC2(page);

	return 0;
}