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
struct qstr {size_t len; scalar_t__* name; } ;
struct path {int /*<<< orphan*/  mnt; TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct filename {struct inode* d_inode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 scalar_t__ FUNC0 (struct filename*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int LAST_NORM ; 
 unsigned int LOOKUP_REVAL ; 
 long FUNC1 (struct filename*) ; 
 struct filename* FUNC2 (struct qstr*,TYPE_1__*,unsigned int) ; 
 int FUNC3 (struct inode**) ; 
 scalar_t__ FUNC4 (struct filename*) ; 
 scalar_t__ FUNC5 (struct filename*) ; 
 int /*<<< orphan*/  FUNC6 (struct filename*) ; 
 struct filename* FUNC7 (int,struct filename*,unsigned int,struct path*,struct qstr*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct path*) ; 
 int /*<<< orphan*/  FUNC15 (struct filename*) ; 
 scalar_t__ FUNC16 (int,unsigned int) ; 
 int FUNC17 (struct path*,struct filename*) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct filename*,struct inode**) ; 

long FUNC19(int dfd, struct filename *name)
{
	int error;
	struct dentry *dentry;
	struct path path;
	struct qstr last;
	int type;
	struct inode *inode = NULL;
	struct inode *delegated_inode = NULL;
	unsigned int lookup_flags = 0;
retry:
	name = FUNC7(dfd, name, lookup_flags, &path, &last, &type);
	if (FUNC0(name))
		return FUNC1(name);

	error = -EISDIR;
	if (type != LAST_NORM)
		goto exit1;

	error = FUNC13(path.mnt);
	if (error)
		goto exit1;
retry_deleg:
	FUNC9(path.dentry->d_inode, I_MUTEX_PARENT);
	dentry = FUNC2(&last, path.dentry, lookup_flags);
	error = FUNC1(dentry);
	if (!FUNC0(dentry)) {
		/* Why not before? Because we want correct error value */
		if (last.name[last.len])
			goto slashes;
		inode = dentry->d_inode;
		if (FUNC5(dentry))
			goto slashes;
		FUNC8(inode);
		error = FUNC17(&path, dentry);
		if (error)
			goto exit2;
		error = FUNC18(path.dentry->d_inode, dentry, &delegated_inode);
exit2:
		FUNC6(dentry);
	}
	FUNC10(path.dentry->d_inode);
	if (inode)
		FUNC11(inode);	/* truncate the inode here */
	inode = NULL;
	if (delegated_inode) {
		error = FUNC3(&delegated_inode);
		if (!error)
			goto retry_deleg;
	}
	FUNC12(path.mnt);
exit1:
	FUNC14(&path);
	if (FUNC16(error, lookup_flags)) {
		lookup_flags |= LOOKUP_REVAL;
		inode = NULL;
		goto retry;
	}
	FUNC15(name);
	return error;

slashes:
	if (FUNC5(dentry))
		error = -ENOENT;
	else if (FUNC4(dentry))
		error = -EISDIR;
	else
		error = -ENOTDIR;
	goto exit2;
}