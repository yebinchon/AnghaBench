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
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_parent; TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int ESTALE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (struct dentry*,struct list_head*) ; 
 struct dentry* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int FUNC13 (struct inode*,struct dentry*) ; 
 int FUNC14 (struct inode*,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dentry *dentry, bool is_dir,
			    struct list_head *list)
{
	struct dentry *upperdir = FUNC9(dentry->d_parent);
	struct inode *dir = upperdir->d_inode;
	struct dentry *upper;
	struct dentry *opaquedir = NULL;
	int err;

	if (!FUNC6(list)) {
		opaquedir = FUNC8(dentry, list);
		err = FUNC1(opaquedir);
		if (FUNC0(opaquedir))
			goto out;
	}

	FUNC4(dir, I_MUTEX_PARENT);
	upper = FUNC7(dentry->d_name.name, upperdir,
			       dentry->d_name.len);
	err = FUNC1(upper);
	if (FUNC0(upper))
		goto out_unlock;

	err = -ESTALE;
	if ((opaquedir && upper != opaquedir) ||
	    (!opaquedir && !FUNC11(dentry, upper)))
		goto out_dput_upper;

	if (is_dir)
		err = FUNC13(dir, upper);
	else
		err = FUNC14(dir, upper, NULL);
	FUNC10(dentry->d_parent, FUNC12(dentry));

	/*
	 * Keeping this dentry hashed would mean having to release
	 * upperpath/lowerpath, which could only be done if we are the
	 * sole user of this dentry.  Too tricky...  Just unhash for
	 * now.
	 */
	if (!err)
		FUNC2(dentry);
out_dput_upper:
	FUNC3(upper);
out_unlock:
	FUNC5(dir);
	FUNC3(opaquedir);
out:
	return err;
}