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
struct user_namespace {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_2__ {struct user_namespace* s_user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_TYPE_CHILD_CREATE ; 
 int EEXIST ; 
 int ENOENT ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(struct inode *dir, struct dentry *child)
{
	struct user_namespace *s_user_ns;
	FUNC1(dir, child, AUDIT_TYPE_CHILD_CREATE);
	if (child->d_inode)
		return -EEXIST;
	if (FUNC0(dir))
		return -ENOENT;
	s_user_ns = dir->i_sb->s_user_ns;
	if (!FUNC6(s_user_ns, FUNC3()) ||
	    !FUNC5(s_user_ns, FUNC2()))
		return -EOVERFLOW;
	return FUNC4(dir, MAY_WRITE | MAY_EXEC);
}