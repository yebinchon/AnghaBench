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

/* Variables and functions */
 char* DEBUG_CACHE_DIR ; 
 int MAXPATHLEN ; 
 char* buildid_dir ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void FUNC5(const char *dir)
{
	if (dir)
		FUNC1(buildid_dir, MAXPATHLEN, "%s", dir);

	/* default to $HOME/.debug */
	if (buildid_dir[0] == '\0') {
		char *home = FUNC0("HOME");

		if (home) {
			FUNC3(buildid_dir, MAXPATHLEN, "%s/%s",
				 home, DEBUG_CACHE_DIR);
		} else {
			FUNC4(buildid_dir, DEBUG_CACHE_DIR, MAXPATHLEN-1);
		}
		buildid_dir[MAXPATHLEN-1] = '\0';
	}
	/* for communicating with external commands */
	FUNC2("PERF_BUILDID_DIR", buildid_dir, 1);
}