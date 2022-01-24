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
 int ENODATA ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (struct inode*,int,char*,char*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct posix_acl*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, int xprefix, struct posix_acl *acl)
{
	char *value = NULL;
	size_t size = 0;
	int rc;

	if (acl) {
		value = FUNC3(acl, &size);
		if (FUNC0(value))
			return FUNC1(value);
	}
	rc = FUNC2(inode, xprefix, "", value, size, 0);
	if (!value && rc == -ENODATA)
		rc = 0;
	FUNC4(value);

	return rc;
}