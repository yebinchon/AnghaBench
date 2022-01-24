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

/* Variables and functions */
 char const* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char const* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

int FUNC2(const char *xattr)
{
	int xattr_len = FUNC0(xattr);

	if ((FUNC0(XATTR_NAME_POSIX_ACL_ACCESS) == xattr_len)
	     && (FUNC1(XATTR_NAME_POSIX_ACL_ACCESS, xattr, xattr_len) == 0))
		return 1;
	if ((FUNC0(XATTR_NAME_POSIX_ACL_DEFAULT) == xattr_len)
	     && (FUNC1(XATTR_NAME_POSIX_ACL_DEFAULT, xattr, xattr_len) == 0))
		return 1;
	return 0;
}