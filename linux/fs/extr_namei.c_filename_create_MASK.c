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
struct filename {int dummy; } ;
typedef  struct filename dentry ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 struct filename* FUNC0 (struct filename*) ; 
 struct filename* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct filename*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int LAST_NORM ; 
 unsigned int LOOKUP_CREATE ; 
 unsigned int LOOKUP_DIRECTORY ; 
 unsigned int LOOKUP_EXCL ; 
 unsigned int LOOKUP_REVAL ; 
 struct filename* FUNC3 (struct qstr*,TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC4 (struct filename*) ; 
 int /*<<< orphan*/  FUNC5 (struct filename*) ; 
 struct filename* FUNC6 (int,struct filename*,unsigned int,struct path*,struct qstr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 int /*<<< orphan*/  FUNC12 (struct filename*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static struct dentry *FUNC14(int dfd, struct filename *name,
				struct path *path, unsigned int lookup_flags)
{
	struct dentry *dentry = FUNC1(-EEXIST);
	struct qstr last;
	int type;
	int err2;
	int error;
	bool is_dir = (lookup_flags & LOOKUP_DIRECTORY);

	/*
	 * Note that only LOOKUP_REVAL and LOOKUP_DIRECTORY matter here. Any
	 * other flags passed in are ignored!
	 */
	lookup_flags &= LOOKUP_REVAL;

	name = FUNC6(dfd, name, lookup_flags, path, &last, &type);
	if (FUNC2(name))
		return FUNC0(name);

	/*
	 * Yucky last component or no last component at all?
	 * (foo/., foo/.., /////)
	 */
	if (FUNC13(type != LAST_NORM))
		goto out;

	/* don't fail immediately if it's r/o, at least try to report other errors */
	err2 = FUNC10(path->mnt);
	/*
	 * Do the final lookup.
	 */
	lookup_flags |= LOOKUP_CREATE | LOOKUP_EXCL;
	FUNC7(path->dentry->d_inode, I_MUTEX_PARENT);
	dentry = FUNC3(&last, path->dentry, lookup_flags);
	if (FUNC2(dentry))
		goto unlock;

	error = -EEXIST;
	if (FUNC4(dentry))
		goto fail;

	/*
	 * Special case - lookup gave negative, but... we had foo/bar/
	 * From the vfs_mknod() POV we just have a negative dentry -
	 * all is fine. Let's be bastards - you had / on the end, you've
	 * been asking for (non-existent) directory. -ENOENT for you.
	 */
	if (FUNC13(!is_dir && last.name[last.len])) {
		error = -ENOENT;
		goto fail;
	}
	if (FUNC13(err2)) {
		error = err2;
		goto fail;
	}
	FUNC12(name);
	return dentry;
fail:
	FUNC5(dentry);
	dentry = FUNC1(error);
unlock:
	FUNC8(path->dentry->d_inode);
	if (!err2)
		FUNC9(path->mnt);
out:
	FUNC11(path);
	FUNC12(name);
	return dentry;
}