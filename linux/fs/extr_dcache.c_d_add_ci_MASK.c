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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,struct qstr*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ,struct qstr*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ,struct qstr*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

struct dentry *FUNC9(struct dentry *dentry, struct inode *inode,
			struct qstr *name)
{
	struct dentry *found, *res;

	/*
	 * First check if a dentry matching the name already exists,
	 * if not go ahead and create it now.
	 */
	found = FUNC4(dentry->d_parent, name);
	if (found) {
		FUNC8(inode);
		return found;
	}
	if (FUNC5(dentry)) {
		found = FUNC3(dentry->d_parent, name,
					dentry->d_wait);
		if (FUNC1(found) || !FUNC5(found)) {
			FUNC8(inode);
			return found;
		}
	} else {
		found = FUNC2(dentry->d_parent, name);
		if (!found) {
			FUNC8(inode);
			return FUNC0(-ENOMEM);
		} 
	}
	res = FUNC6(inode, found);
	if (res) {
		FUNC7(found);
		return res;
	}
	return found;
}