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
 int /*<<< orphan*/  ENAMETOOLONG ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct dentry*,char*,int) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (char**,int*,char*,int) ; 

char *FUNC5(struct dentry *dentry, char *buf, int buflen)
{
	char *p = NULL;
	char *retval;

	if (FUNC3(dentry)) {
		p = buf + buflen;
		if (FUNC4(&p, &buflen, "//deleted", 10) != 0)
			goto Elong;
		buflen++;
	}
	retval = FUNC2(dentry, buf, buflen);
	if (!FUNC1(retval) && p)
		*p = '/';	/* restore '/' overriden with '\0' */
	return retval;
Elong:
	return FUNC0(-ENAMETOOLONG);
}