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
typedef  scalar_t__ uid_t ;
struct path {TYPE_1__* dentry; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  scalar_t__ gid_t ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_KILL_PRIV ; 
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int ATTR_UID ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (TYPE_1__*,struct iattr*,struct inode**) ; 
 int FUNC9 (struct path const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct path *path, uid_t user, gid_t group)
{
	struct inode *inode = path->dentry->d_inode;
	struct inode *delegated_inode = NULL;
	int error;
	struct iattr newattrs;
	kuid_t uid;
	kgid_t gid;

	uid = FUNC7(FUNC2(), user);
	gid = FUNC6(FUNC2(), group);

retry_deleg:
	newattrs.ia_valid =  ATTR_CTIME;
	if (user != (uid_t) -1) {
		if (!FUNC10(uid))
			return -EINVAL;
		newattrs.ia_valid |= ATTR_UID;
		newattrs.ia_uid = uid;
	}
	if (group != (gid_t) -1) {
		if (!FUNC3(gid))
			return -EINVAL;
		newattrs.ia_valid |= ATTR_GID;
		newattrs.ia_gid = gid;
	}
	if (!FUNC0(inode->i_mode))
		newattrs.ia_valid |=
			ATTR_KILL_SUID | ATTR_KILL_SGID | ATTR_KILL_PRIV;
	FUNC4(inode);
	error = FUNC9(path, uid, gid);
	if (!error)
		error = FUNC8(path->dentry, &newattrs, &delegated_inode);
	FUNC5(inode);
	if (delegated_inode) {
		error = FUNC1(&delegated_inode);
		if (!error)
			goto retry_deleg;
	}
	return error;
}