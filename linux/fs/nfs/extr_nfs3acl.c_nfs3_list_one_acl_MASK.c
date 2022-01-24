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
typedef  size_t ssize_t ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 struct posix_acl* FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, int type, const char *name, void *data,
		size_t size, ssize_t *result)
{
	struct posix_acl *acl;
	char *p = data + *result;

	acl = FUNC1(inode, type);
	if (FUNC0(acl))
		return 0;

	FUNC2(acl);

	*result += FUNC4(name);
	*result += 1;
	if (!size)
		return 0;
	if (*result > size)
		return -ERANGE;

	FUNC3(p, name);
	return 0;
}