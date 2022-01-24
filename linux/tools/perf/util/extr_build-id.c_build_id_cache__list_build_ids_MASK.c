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
struct strlist {int dummy; } ;
struct nsinfo {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,struct nsinfo*,int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct strlist* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lsdir_no_dot_filter ; 

int FUNC3(const char *pathname, struct nsinfo *nsi,
				   struct strlist **result)
{
	char *dir_name;
	int ret = 0;

	dir_name = FUNC0(NULL, pathname, nsi, false, false);
	if (!dir_name)
		return -ENOMEM;

	*result = FUNC2(dir_name, lsdir_no_dot_filter);
	if (!*result)
		ret = -errno;
	FUNC1(dir_name);

	return ret;
}