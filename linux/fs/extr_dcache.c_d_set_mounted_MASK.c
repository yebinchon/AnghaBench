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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_MOUNTED ; 
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct dentry *dentry)
{
	struct dentry *p;
	int ret = -ENOENT;
	FUNC7(&rename_lock);
	for (p = dentry->d_parent; !FUNC0(p); p = p->d_parent) {
		/* Need exclusion wrt. d_invalidate() */
		FUNC4(&p->d_lock);
		if (FUNC6(FUNC2(p))) {
			FUNC5(&p->d_lock);
			goto out;
		}
		FUNC5(&p->d_lock);
	}
	FUNC4(&dentry->d_lock);
	if (!FUNC3(dentry)) {
		ret = -EBUSY;
		if (!FUNC1(dentry)) {
			dentry->d_flags |= DCACHE_MOUNTED;
			ret = 0;
		}
	}
 	FUNC5(&dentry->d_lock);
out:
	FUNC8(&rename_lock);
	return ret;
}