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
struct ovl_fh {int /*<<< orphan*/  len; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct ovl_fh*) ; 
 int FUNC1 (struct ovl_fh*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct ovl_fh*) ; 
 int FUNC4 (struct dentry*,char const*,struct ovl_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ovl_fh* FUNC5 (struct dentry*,int) ; 
 int FUNC6 (struct dentry*,char const*,struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,struct dentry*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct dentry *dentry, const char *name,
		      struct dentry *real, bool is_upper, bool set)
{
	struct inode *inode;
	struct ovl_fh *fh;
	int err;

	fh = FUNC5(real, is_upper);
	err = FUNC1(fh);
	if (FUNC0(fh)) {
		fh = NULL;
		goto fail;
	}

	err = FUNC6(dentry, name, fh);
	if (set && err == -ENODATA)
		err = FUNC4(dentry, name, fh, fh->len, 0);
	if (err)
		goto fail;

out:
	FUNC3(fh);
	return err;

fail:
	inode = FUNC2(real);
	FUNC7("overlayfs: failed to verify %s (%pd2, ino=%lu, err=%i)\n",
			    is_upper ? "upper" : "origin", real,
			    inode ? inode->i_ino : 0, err);
	goto out;
}