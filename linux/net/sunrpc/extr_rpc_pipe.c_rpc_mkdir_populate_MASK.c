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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 struct dentry* FUNC2 (struct dentry*,char const*) ; 
 int FUNC3 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC8(struct dentry *parent,
		const char *name, umode_t mode, void *private,
		int (*populate)(struct dentry *, void *), void *args_populate)
{
	struct dentry *dentry;
	struct inode *dir = FUNC5(parent);
	int error;

	FUNC6(dir, I_MUTEX_PARENT);
	dentry = FUNC2(parent, name);
	if (FUNC1(dentry))
		goto out;
	error = FUNC3(dir, dentry, mode, NULL, private);
	if (error != 0)
		goto out_err;
	if (populate != NULL) {
		error = populate(dentry, args_populate);
		if (error)
			goto err_rmdir;
	}
out:
	FUNC7(dir);
	return dentry;
err_rmdir:
	FUNC4(dir, dentry);
out_err:
	dentry = FUNC0(error);
	goto out;
}