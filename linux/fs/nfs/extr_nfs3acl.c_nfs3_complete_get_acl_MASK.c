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

/* Variables and functions */
 struct posix_acl* FUNC0 (struct posix_acl**,struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 struct posix_acl* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct posix_acl **p, struct posix_acl *acl)
{
	struct posix_acl *sentinel = FUNC3(current);

	/* Only cache the ACL if our sentinel is still in place. */
	FUNC1(acl);
	if (FUNC0(p, sentinel, acl) != sentinel)
		FUNC2(acl);
}