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
struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ cache_symlinks; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int EIO ; 
 int ENOMEM ; 
 char const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct page*) ; 
 struct fuse_conn* FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 char const* FUNC6 (struct page*) ; 
 char const* FUNC7 (struct dentry*,struct inode*,struct delayed_call*) ; 
 int /*<<< orphan*/  page_put_link ; 
 int /*<<< orphan*/  FUNC8 (struct delayed_call*,int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static const char *FUNC9(struct dentry *dentry, struct inode *inode,
				 struct delayed_call *callback)
{
	struct fuse_conn *fc = FUNC4(inode);
	struct page *page;
	int err;

	err = -EIO;
	if (FUNC5(inode))
		goto out_err;

	if (fc->cache_symlinks)
		return FUNC7(dentry, inode, callback);

	err = -ECHILD;
	if (!dentry)
		goto out_err;

	page = FUNC2(GFP_KERNEL);
	err = -ENOMEM;
	if (!page)
		goto out_err;

	err = FUNC3(inode, page);
	if (err) {
		FUNC1(page);
		goto out_err;
	}

	FUNC8(callback, page_put_link, page);

	return FUNC6(page);

out_err:
	return FUNC0(err);
}