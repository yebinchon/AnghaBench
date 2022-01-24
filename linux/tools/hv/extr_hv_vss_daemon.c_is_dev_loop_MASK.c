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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int R_OK ; 
 int X_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC11(const char *blkname)
{
	char *buffer;
	DIR *dir;
	struct dirent *entry;
	bool ret = false;

	buffer = FUNC4(PATH_MAX);
	if (!buffer) {
		FUNC10(LOG_ERR, "Can't allocate memory!");
		FUNC2(1);
	}

	FUNC7(buffer, PATH_MAX, "%s/loop", blkname);
	if (!FUNC0(buffer, R_OK | X_OK)) {
		ret = true;
		goto free_buffer;
	} else if (errno != ENOENT) {
		FUNC10(LOG_ERR, "Can't access: %s; error:%d %s!",
		       buffer, errno, FUNC9(errno));
	}

	FUNC7(buffer, PATH_MAX, "%s/slaves", blkname);
	dir = FUNC5(buffer);
	if (!dir) {
		if (errno != ENOENT)
			FUNC10(LOG_ERR, "Can't opendir: %s; error:%d %s!",
			       buffer, errno, FUNC9(errno));
		goto free_buffer;
	}

	while ((entry = FUNC6(dir)) != NULL) {
		if (FUNC8(entry->d_name, ".") == 0 ||
		    FUNC8(entry->d_name, "..") == 0)
			continue;

		FUNC7(buffer, PATH_MAX, "%s/slaves/%s", blkname,
			 entry->d_name);
		if (FUNC11(buffer)) {
			ret = true;
			break;
		}
	}
	FUNC1(dir);
free_buffer:
	FUNC3(buffer);
	return ret;
}