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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  scanelemdir ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 char* FORMAT_SCAN_ELEMENTS_DIR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int FUNC9(char *dev_dir_name, int enable)
{
	const struct dirent *ent;
	char scanelemdir[256];
	DIR *dp;
	int ret;

	FUNC7(scanelemdir, sizeof(scanelemdir),
		 FORMAT_SCAN_ELEMENTS_DIR, dev_dir_name);
	scanelemdir[sizeof(scanelemdir)-1] = '\0';

	dp = FUNC3(scanelemdir);
	if (!dp) {
		FUNC1(stderr, "Enabling/disabling channels: can't open %s\n",
			scanelemdir);
		return -EIO;
	}

	ret = -ENOENT;
	while (ent = FUNC6(dp), ent) {
		if (FUNC2(ent->d_name, "_en")) {
			FUNC5("%sabling: %s\n",
			       enable ? "En" : "Dis",
			       ent->d_name);
			ret = FUNC8(ent->d_name, scanelemdir,
					      enable);
			if (ret < 0)
				FUNC1(stderr, "Failed to enable/disable %s\n",
					ent->d_name);
		}
	}

	if (FUNC0(dp) == -1) {
		FUNC4("Enabling/disabling channels: "
		       "Failed to close directory");
		return -errno;
	}
	return 0;
}