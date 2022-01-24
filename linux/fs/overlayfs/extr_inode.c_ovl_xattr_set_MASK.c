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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct inode*) ; 
 struct cred* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct cred const*) ; 
 int FUNC11 (struct dentry*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dentry*,char const*) ; 
 int FUNC13 (struct dentry*,char const*,void const*,size_t,int) ; 

int FUNC14(struct dentry *dentry, struct inode *inode, const char *name,
		  const void *value, size_t size, int flags)
{
	int err;
	struct dentry *upperdentry = FUNC7(inode);
	struct dentry *realdentry = upperdentry ?: FUNC4(dentry);
	const struct cred *old_cred;

	err = FUNC9(dentry);
	if (err)
		goto out;

	if (!value && !upperdentry) {
		err = FUNC11(realdentry, name, NULL, 0);
		if (err < 0)
			goto out_drop_write;
	}

	if (!upperdentry) {
		err = FUNC2(dentry);
		if (err)
			goto out_drop_write;

		realdentry = FUNC5(dentry);
	}

	old_cred = FUNC8(dentry->d_sb);
	if (value)
		err = FUNC13(realdentry, name, value, size, flags);
	else {
		FUNC0(flags != XATTR_REPLACE);
		err = FUNC12(realdentry, name);
	}
	FUNC10(old_cred);

	/* copy c/mtime */
	FUNC3(FUNC1(realdentry), inode);

out_drop_write:
	FUNC6(dentry);
out:
	return err;
}