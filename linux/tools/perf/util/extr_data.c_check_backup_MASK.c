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
struct stat {scalar_t__ st_size; } ;
struct perf_data {char* path; } ;
typedef  int /*<<< orphan*/  oldname ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct stat*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct perf_data *data)
{
	struct stat st;

	if (FUNC0(data))
		return 0;

	if (!FUNC5(data->path, &st) && st.st_size) {
		char oldname[PATH_MAX];
		int ret;

		FUNC4(oldname, sizeof(oldname), "%s.old",
			 data->path);

		ret = FUNC3(oldname);
		if (ret) {
			FUNC1("Can't remove old data: %s (%s)\n",
			       ret == -2 ?
			       "Unknown file found" : FUNC6(errno),
			       oldname);
			return -1;
		}

		if (FUNC2(data->path, oldname)) {
			FUNC1("Can't move data: %s (%s to %s)\n",
			       FUNC6(errno),
			       data->path, oldname);
			return -1;
		}
	}

	return 0;
}