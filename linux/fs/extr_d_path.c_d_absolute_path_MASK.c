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
struct path {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int*,char*,int) ; 
 int FUNC2 (struct path const*,struct path*,char**,int*) ; 

char *FUNC3(const struct path *path,
	       char *buf, int buflen)
{
	struct path root = {};
	char *res = buf + buflen;
	int error;

	FUNC1(&res, &buflen, "\0", 1);
	error = FUNC2(path, &root, &res, &buflen);

	if (error > 1)
		error = -EINVAL;
	if (error < 0)
		return FUNC0(error);
	return res;
}