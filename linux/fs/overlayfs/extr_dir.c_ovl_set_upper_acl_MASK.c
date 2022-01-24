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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FS_POSIX_ACL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XATTR_CREATE ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct posix_acl const*,void*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dentry*,char const*,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dentry *upperdentry, const char *name,
			     const struct posix_acl *acl)
{
	void *buffer;
	size_t size;
	int err;

	if (!FUNC0(CONFIG_FS_POSIX_ACL) || !acl)
		return 0;

	size = FUNC4(acl->a_count);
	buffer = FUNC2(size, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	err = FUNC3(&init_user_ns, acl, buffer, size);
	if (err < 0)
		goto out_free;

	err = FUNC5(upperdentry, name, buffer, size, XATTR_CREATE);
out_free:
	FUNC1(buffer);
	return err;
}