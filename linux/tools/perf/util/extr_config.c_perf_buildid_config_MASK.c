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
 int MAXPATHLEN ; 
 char* buildid_dir ; 
 char* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *var, const char *value)
{
	/* same dir for all commands */
	if (!FUNC2(var, "buildid.dir")) {
		const char *dir = FUNC0(var, value);

		if (!dir) {
			FUNC1("Invalid buildid directory!\n");
			return -1;
		}
		FUNC3(buildid_dir, dir, MAXPATHLEN-1);
		buildid_dir[MAXPATHLEN-1] = '\0';
	}

	return 0;
}