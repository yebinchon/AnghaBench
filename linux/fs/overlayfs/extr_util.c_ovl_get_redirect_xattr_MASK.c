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
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  OVL_XATTR_REDIRECT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 char* FUNC5 (char*,char) ; 

char *FUNC6(struct dentry *dentry, int padding)
{
	int res;
	char *s, *next, *buf = NULL;

	res = FUNC2(dentry, OVL_XATTR_REDIRECT, &buf, padding + 1);
	if (res == -ENODATA)
		return NULL;
	if (res < 0)
		return FUNC0(res);
	if (res == 0)
		goto invalid;

	if (buf[0] == '/') {
		for (s = buf; *s++ == '/'; s = next) {
			next = FUNC5(s, '/');
			if (s == next)
				goto invalid;
		}
	} else {
		if (FUNC4(buf, '/') != NULL)
			goto invalid;
	}

	return buf;
invalid:
	FUNC3("overlayfs: invalid redirect (%s)\n", buf);
	res = -EINVAL;
	FUNC1(buf);
	return FUNC0(res);
}