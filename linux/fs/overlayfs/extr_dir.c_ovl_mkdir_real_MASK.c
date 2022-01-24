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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry **newdentry,
			  umode_t mode)
{
	int err;
	struct dentry *d, *dentry = *newdentry;

	err = FUNC6(dir, dentry, mode);
	if (err)
		return err;

	if (FUNC4(!FUNC2(dentry)))
		return 0;

	/*
	 * vfs_mkdir() may succeed and leave the dentry passed
	 * to it unhashed and negative. If that happens, try to
	 * lookup a new hashed and positive dentry.
	 */
	d = FUNC5(dentry->d_name.name, dentry->d_parent,
			   dentry->d_name.len);
	if (FUNC0(d)) {
		FUNC7("overlayfs: failed lookup after mkdir (%pd2, err=%i).\n",
			dentry, err);
		return FUNC1(d);
	}
	FUNC3(dentry);
	*newdentry = d;

	return 0;
}