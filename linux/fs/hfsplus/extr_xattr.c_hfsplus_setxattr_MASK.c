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
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HFSPLUS_ATTR_MAX_STRLEN ; 
 int NLS_MAX_CHARSET_SIZE ; 
 int FUNC0 (struct inode*,char*,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int FUNC4(struct inode *inode, const char *name,
		     const void *value, size_t size, int flags,
		     const char *prefix, size_t prefixlen)
{
	char *xattr_name;
	int res;

	xattr_name = FUNC2(NLS_MAX_CHARSET_SIZE * HFSPLUS_ATTR_MAX_STRLEN + 1,
		GFP_KERNEL);
	if (!xattr_name)
		return -ENOMEM;
	FUNC3(xattr_name, prefix);
	FUNC3(xattr_name + prefixlen, name);
	res = FUNC0(inode, xattr_name, value, size, flags);
	FUNC1(xattr_name);
	return res;
}