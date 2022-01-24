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
typedef  int umode_t ;
struct path {int /*<<< orphan*/  mnt; TYPE_1__* dentry; } ;
struct inode {int i_mode; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MODE ; 
 int S_IALLUGO ; 
 int FUNC0 (struct inode**) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,struct iattr*,struct inode**) ; 
 int FUNC6 (struct path const*,int) ; 

__attribute__((used)) static int FUNC7(const struct path *path, umode_t mode)
{
	struct inode *inode = path->dentry->d_inode;
	struct inode *delegated_inode = NULL;
	struct iattr newattrs;
	int error;

	error = FUNC4(path->mnt);
	if (error)
		return error;
retry_deleg:
	FUNC1(inode);
	error = FUNC6(path, mode);
	if (error)
		goto out_unlock;
	newattrs.ia_mode = (mode & S_IALLUGO) | (inode->i_mode & ~S_IALLUGO);
	newattrs.ia_valid = ATTR_MODE | ATTR_CTIME;
	error = FUNC5(path->dentry, &newattrs, &delegated_inode);
out_unlock:
	FUNC2(inode);
	if (delegated_inode) {
		error = FUNC0(&delegated_inode);
		if (!error)
			goto retry_deleg;
	}
	FUNC3(path->mnt);
	return error;
}