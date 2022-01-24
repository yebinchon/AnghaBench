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
struct dentry {int d_flags; int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*,int) ; 
 int FUNC6 (struct dentry*,struct dentry*,int) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 struct cred* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cred const*) ; 

int FUNC10(struct dentry *dentry, int flags)
{
	int err = 0;
	const struct cred *old_cred = FUNC8(dentry->d_sb);
	bool disconnected = (dentry->d_flags & DCACHE_DISCONNECTED);

	/*
	 * With NFS export, copy up can get called for a disconnected non-dir.
	 * In this case, we will copy up lower inode to index dir without
	 * linking it to upper dir.
	 */
	if (FUNC0(disconnected && FUNC1(dentry)))
		return -EIO;

	while (!err) {
		struct dentry *next;
		struct dentry *parent = NULL;

		if (FUNC5(dentry, flags))
			break;

		next = FUNC2(dentry);
		/* find the topmost dentry not yet copied up */
		for (; !disconnected;) {
			parent = FUNC3(next);

			if (FUNC7(parent))
				break;

			FUNC4(next);
			next = parent;
		}

		err = FUNC6(parent, next, flags);

		FUNC4(parent);
		FUNC4(next);
	}
	FUNC9(old_cred);

	return err;
}