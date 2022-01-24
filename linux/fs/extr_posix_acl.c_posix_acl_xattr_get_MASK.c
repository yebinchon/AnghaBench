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
struct xattr_handler {int /*<<< orphan*/  flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct posix_acl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct posix_acl*,void*,size_t) ; 

__attribute__((used)) static int
FUNC7(const struct xattr_handler *handler,
		    struct dentry *unused, struct inode *inode,
		    const char *name, void *value, size_t size)
{
	struct posix_acl *acl;
	int error;

	if (!FUNC1(inode))
		return -EOPNOTSUPP;
	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	acl = FUNC4(inode, handler->flags);
	if (FUNC0(acl))
		return FUNC2(acl);
	if (acl == NULL)
		return -ENODATA;

	error = FUNC6(&init_user_ns, acl, value, size);
	FUNC5(acl);

	return error;
}