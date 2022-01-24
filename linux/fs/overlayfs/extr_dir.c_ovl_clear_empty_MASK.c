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
struct path {struct dentry* dentry; } ;
struct list_head {int dummy; } ;
struct kstat {int /*<<< orphan*/  mode; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int EROFS ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  RENAME_EXCHANGE ; 
 int /*<<< orphan*/  STATX_BASIC_STATS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct list_head*) ; 
 int FUNC12 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC13 (struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC14 (TYPE_1__*) ; 
 int FUNC15 (struct inode*,struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,struct path*) ; 
 int FUNC18 (struct dentry*,struct kstat*) ; 
 int FUNC19 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC20 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC21 (struct dentry*,struct dentry*) ; 
 int FUNC22 (struct path*,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC23(struct dentry *dentry,
				      struct list_head *list)
{
	struct dentry *workdir = FUNC20(dentry);
	struct inode *wdir = workdir->d_inode;
	struct dentry *upperdir = FUNC14(dentry->d_parent);
	struct inode *udir = upperdir->d_inode;
	struct path upperpath;
	struct dentry *upper;
	struct dentry *opaquedir;
	struct kstat stat;
	int err;

	if (FUNC5(!workdir))
		return FUNC0(-EROFS);

	err = FUNC16(workdir, upperdir);
	if (err)
		goto out;

	FUNC17(dentry, &upperpath);
	err = FUNC22(&upperpath, &stat,
			  STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
	if (err)
		goto out_unlock;

	err = -ESTALE;
	if (!FUNC4(stat.mode))
		goto out_unlock;
	upper = upperpath.dentry;
	if (upper->d_parent->d_inode != udir)
		goto out_unlock;

	opaquedir = FUNC13(workdir, FUNC2(stat.mode));
	err = FUNC3(opaquedir);
	if (FUNC1(opaquedir))
		goto out_unlock;

	err = FUNC12(upper, opaquedir);
	if (err)
		goto out_cleanup;

	err = FUNC19(dentry, opaquedir);
	if (err)
		goto out_cleanup;

	FUNC8(opaquedir->d_inode);
	err = FUNC18(opaquedir, &stat);
	FUNC9(opaquedir->d_inode);
	if (err)
		goto out_cleanup;

	err = FUNC15(wdir, opaquedir, udir, upper, RENAME_EXCHANGE);
	if (err)
		goto out_cleanup;

	FUNC11(upper, list);
	FUNC10(wdir, upper);
	FUNC21(workdir, upperdir);

	/* dentry's upper doesn't match now, get rid of it */
	FUNC6(dentry);

	return opaquedir;

out_cleanup:
	FUNC10(wdir, opaquedir);
	FUNC7(opaquedir);
out_unlock:
	FUNC21(workdir, upperdir);
out:
	return FUNC0(err);
}