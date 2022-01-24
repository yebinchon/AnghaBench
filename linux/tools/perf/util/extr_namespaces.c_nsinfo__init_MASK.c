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
struct stat {scalar_t__ st_ino; } ;
struct nsinfo {int pid; int need_setns; char* mntns_path; void* nstgid; void* tgid; } ;
typedef  void* pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,char*,...) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC10(struct nsinfo *nsi)
{
	char oldns[PATH_MAX];
	char spath[PATH_MAX];
	char *newns = NULL;
	char *statln = NULL;
	struct stat old_stat;
	struct stat new_stat;
	FILE *f = NULL;
	size_t linesz = 0;
	int rv = -1;

	if (FUNC5(oldns, PATH_MAX, "/proc/self/ns/mnt") >= PATH_MAX)
		return rv;

	if (FUNC0(&newns, "/proc/%d/ns/mnt", nsi->pid) == -1)
		return rv;

	if (FUNC6(oldns, &old_stat) < 0)
		goto out;

	if (FUNC6(newns, &new_stat) < 0)
		goto out;

	/* Check if the mount namespaces differ, if so then indicate that we
	 * want to switch as part of looking up dso/map data.
	 */
	if (old_stat.st_ino != new_stat.st_ino) {
		nsi->need_setns = true;
		nsi->mntns_path = newns;
		newns = NULL;
	}

	/* If we're dealing with a process that is in a different PID namespace,
	 * attempt to work out the innermost tgid for the process.
	 */
	if (FUNC5(spath, PATH_MAX, "/proc/%d/status", nsi->pid) >= PATH_MAX)
		goto out;

	f = FUNC2(spath, "r");
	if (f == NULL)
		goto out;

	while (FUNC4(&statln, &linesz, f) != -1) {
		/* Use tgid if CONFIG_PID_NS is not defined. */
		if (FUNC8(statln, "Tgid:") != NULL) {
			nsi->tgid = (pid_t)FUNC9(FUNC7(statln, '\t'),
						     NULL, 10);
			nsi->nstgid = nsi->tgid;
		}

		if (FUNC8(statln, "NStgid:") != NULL) {
			nsi->nstgid = (pid_t)FUNC9(FUNC7(statln, '\t'),
						     NULL, 10);
			break;
		}
	}
	rv = 0;

out:
	if (f != NULL)
		(void) FUNC1(f);
	FUNC3(statln);
	FUNC3(newns);
	return rv;
}