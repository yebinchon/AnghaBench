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
struct nsinfo {char* mntns_path; int /*<<< orphan*/  need_setns; } ;
struct nscookie {int oldns; int newns; char* oldcwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*) ; 

void FUNC6(struct nsinfo *nsi,
				  struct nscookie *nc)
{
	char curpath[PATH_MAX];
	int oldns = -1;
	int newns = -1;
	char *oldcwd = NULL;

	if (nc == NULL)
		return;

	nc->oldns = -1;
	nc->newns = -1;

	if (!nsi || !nsi->need_setns)
		return;

	if (FUNC5(curpath, PATH_MAX, "/proc/self/ns/mnt") >= PATH_MAX)
		return;

	oldcwd = FUNC2();
	if (!oldcwd)
		return;

	oldns = FUNC3(curpath, O_RDONLY);
	if (oldns < 0)
		goto errout;

	newns = FUNC3(nsi->mntns_path, O_RDONLY);
	if (newns < 0)
		goto errout;

	if (FUNC4(newns, CLONE_NEWNS) < 0)
		goto errout;

	nc->oldcwd = oldcwd;
	nc->oldns = oldns;
	nc->newns = newns;
	return;

errout:
	FUNC1(oldcwd);
	if (oldns > -1)
		FUNC0(oldns);
	if (newns > -1)
		FUNC0(newns);
}