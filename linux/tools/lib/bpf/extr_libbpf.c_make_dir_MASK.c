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
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int EEXIST ; 
 int STRERR_BUFSIZE ; 
 int errno ; 
 char* FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *path)
{
	char *cp, errmsg[STRERR_BUFSIZE];
	int err = 0;

	if (FUNC1(path, 0700) && errno != EEXIST)
		err = -errno;

	if (err) {
		cp = FUNC0(-err, errmsg, sizeof(errmsg));
		FUNC2("failed to mkdir %s: %s\n", path, cp);
	}
	return err;
}