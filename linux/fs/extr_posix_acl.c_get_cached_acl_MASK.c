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
struct posix_acl {int /*<<< orphan*/  a_refcount; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct posix_acl** FUNC0 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct posix_acl*) ; 
 struct posix_acl* FUNC3 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

struct posix_acl *FUNC7(struct inode *inode, int type)
{
	struct posix_acl **p = FUNC0(inode, type);
	struct posix_acl *acl;

	for (;;) {
		FUNC4();
		acl = FUNC3(*p);
		if (!acl || FUNC2(acl) ||
		    FUNC6(&acl->a_refcount))
			break;
		FUNC5();
		FUNC1();
	}
	FUNC5();
	return acl;
}