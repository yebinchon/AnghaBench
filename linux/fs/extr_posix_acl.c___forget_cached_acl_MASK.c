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
 int /*<<< orphan*/  ACL_NOT_CACHED ; 
 int /*<<< orphan*/  FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 struct posix_acl* FUNC2 (struct posix_acl**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct posix_acl **p)
{
	struct posix_acl *old;

	old = FUNC2(p, ACL_NOT_CACHED);
	if (!FUNC0(old))
		FUNC1(old);
}