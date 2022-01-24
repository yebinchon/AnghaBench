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
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct posix_acl** FUNC0 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 
 struct posix_acl* FUNC4 (struct posix_acl**,int /*<<< orphan*/ ) ; 

void FUNC5(struct inode *inode, int type, struct posix_acl *acl)
{
	struct posix_acl **p = FUNC0(inode, type);
	struct posix_acl *old;

	old = FUNC4(p, FUNC2(acl));
	if (!FUNC1(old))
		FUNC3(old);
}