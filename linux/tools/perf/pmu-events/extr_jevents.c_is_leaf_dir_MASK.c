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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_UNKNOWN ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(const char *fpath)
{
	DIR *d;
	struct dirent *dir;
	int res = 1;

	d = FUNC2(fpath);
	if (!d)
		return 0;

	while ((dir = FUNC3(d)) != NULL) {
		if (!FUNC6(dir->d_name, ".") || !FUNC6(dir->d_name, ".."))
			continue;

		if (dir->d_type == DT_DIR) {
			res = 0;
			break;
		} else if (dir->d_type == DT_UNKNOWN) {
			char path[PATH_MAX];
			struct stat st;

			FUNC4(path, "%s/%s", fpath, dir->d_name);
			if (FUNC5(path, &st))
				break;

			if (FUNC0(st.st_mode)) {
				res = 0;
				break;
			}
		}
	}

	FUNC1(d);

	return res;
}