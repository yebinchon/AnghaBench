#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_1__* dentry; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {TYPE_2__ d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  PATH_MAX ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct path const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *FUNC5(const struct path *path, char **pathbuf, char *namebuf)
{
	char *pathname = NULL;

	*pathbuf = FUNC1();
	if (*pathbuf) {
		pathname = FUNC3(path, *pathbuf, PATH_MAX);
		if (FUNC0(pathname)) {
			FUNC2(*pathbuf);
			*pathbuf = NULL;
			pathname = NULL;
		}
	}

	if (!pathname) {
		FUNC4(namebuf, path->dentry->d_name.name, NAME_MAX);
		pathname = namebuf;
	}

	return pathname;
}