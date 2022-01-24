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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct posix_acl* FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 

__attribute__((used)) static int
FUNC5(const struct xattr_handler *handler,
		    struct dentry *unused, struct inode *inode,
		    const char *name, const void *value,
		    size_t size, int flags)
{
	struct posix_acl *acl = NULL;
	int ret;

	if (value) {
		acl = FUNC2(&init_user_ns, value, size);
		if (FUNC0(acl))
			return FUNC1(acl);
	}
	ret = FUNC4(inode, handler->flags, acl);
	FUNC3(acl);
	return ret;
}