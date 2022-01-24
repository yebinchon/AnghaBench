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
struct inode {int dummy; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_ctime; int /*<<< orphan*/  ia_mtime; int /*<<< orphan*/  ia_atime; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_mode; } ;
struct hostfs_iattr {scalar_t__ ia_size; int /*<<< orphan*/  ia_valid; void* ia_ctime; void* ia_mtime; void* ia_atime; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int fd; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_ATIME_SET ; 
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_MTIME_SET ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HOSTFS_ATTR_ATIME ; 
 int /*<<< orphan*/  HOSTFS_ATTR_ATIME_SET ; 
 int /*<<< orphan*/  HOSTFS_ATTR_CTIME ; 
 int /*<<< orphan*/  HOSTFS_ATTR_GID ; 
 int /*<<< orphan*/  HOSTFS_ATTR_MODE ; 
 int /*<<< orphan*/  HOSTFS_ATTR_MTIME ; 
 int /*<<< orphan*/  HOSTFS_ATTR_MTIME_SET ; 
 int /*<<< orphan*/  HOSTFS_ATTR_SIZE ; 
 int /*<<< orphan*/  HOSTFS_ATTR_UID ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ append ; 
 struct inode* FUNC2 (struct dentry*) ; 
 char* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (char*,struct hostfs_iattr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iattr*) ; 
 int FUNC10 (struct dentry*,struct iattr*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC2(dentry);
	struct hostfs_iattr attrs;
	char *name;
	int err;

	int fd = FUNC0(inode)->fd;

	err = FUNC10(dentry, attr);
	if (err)
		return err;

	if (append)
		attr->ia_valid &= ~ATTR_SIZE;

	attrs.ia_valid = 0;
	if (attr->ia_valid & ATTR_MODE) {
		attrs.ia_valid |= HOSTFS_ATTR_MODE;
		attrs.ia_mode = attr->ia_mode;
	}
	if (attr->ia_valid & ATTR_UID) {
		attrs.ia_valid |= HOSTFS_ATTR_UID;
		attrs.ia_uid = FUNC5(&init_user_ns, attr->ia_uid);
	}
	if (attr->ia_valid & ATTR_GID) {
		attrs.ia_valid |= HOSTFS_ATTR_GID;
		attrs.ia_gid = FUNC4(&init_user_ns, attr->ia_gid);
	}
	if (attr->ia_valid & ATTR_SIZE) {
		attrs.ia_valid |= HOSTFS_ATTR_SIZE;
		attrs.ia_size = attr->ia_size;
	}
	if (attr->ia_valid & ATTR_ATIME) {
		attrs.ia_valid |= HOSTFS_ATTR_ATIME;
		attrs.ia_atime = FUNC11(attr->ia_atime);
	}
	if (attr->ia_valid & ATTR_MTIME) {
		attrs.ia_valid |= HOSTFS_ATTR_MTIME;
		attrs.ia_mtime = FUNC11(attr->ia_mtime);
	}
	if (attr->ia_valid & ATTR_CTIME) {
		attrs.ia_valid |= HOSTFS_ATTR_CTIME;
		attrs.ia_ctime = FUNC11(attr->ia_ctime);
	}
	if (attr->ia_valid & ATTR_ATIME_SET) {
		attrs.ia_valid |= HOSTFS_ATTR_ATIME_SET;
	}
	if (attr->ia_valid & ATTR_MTIME_SET) {
		attrs.ia_valid |= HOSTFS_ATTR_MTIME_SET;
	}
	name = FUNC3(dentry);
	if (name == NULL)
		return -ENOMEM;
	err = FUNC8(name, &attrs, fd);
	FUNC1(name);
	if (err)
		return err;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC6(inode))
		FUNC12(inode, attr->ia_size);

	FUNC9(inode, attr);
	FUNC7(inode);
	return 0;
}