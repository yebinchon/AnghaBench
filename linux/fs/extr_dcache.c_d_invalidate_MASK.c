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
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct dentry**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  find_submount ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct dentry *dentry)
{
	bool had_submounts = false;
	FUNC6(&dentry->d_lock);
	if (FUNC1(dentry)) {
		FUNC7(&dentry->d_lock);
		return;
	}
	FUNC0(dentry);
	FUNC7(&dentry->d_lock);

	/* Negative dentries can be dropped without further checks */
	if (!dentry->d_inode)
		return;

	FUNC5(dentry);
	for (;;) {
		struct dentry *victim = NULL;
		FUNC2(dentry, &victim, find_submount);
		if (!victim) {
			if (had_submounts)
				FUNC5(dentry);
			return;
		}
		had_submounts = true;
		FUNC3(victim);
		FUNC4(victim);
	}
}