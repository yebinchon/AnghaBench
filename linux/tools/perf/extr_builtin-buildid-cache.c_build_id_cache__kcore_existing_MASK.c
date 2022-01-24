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
typedef  int /*<<< orphan*/  to_subdir ;
typedef  int /*<<< orphan*/  to ;
struct dirent {scalar_t__ d_type; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC7(const char *from_dir, char *to_dir,
					  size_t to_dir_sz)
{
	char from[PATH_MAX];
	char to[PATH_MAX];
	char to_subdir[PATH_MAX];
	struct dirent *dent;
	int ret = -1;
	DIR *d;

	d = FUNC2(to_dir);
	if (!d)
		return -1;

	FUNC5(from, sizeof(from), "%s/modules", from_dir);

	while (1) {
		dent = FUNC3(d);
		if (!dent)
			break;
		if (dent->d_type != DT_DIR)
			continue;
		FUNC5(to, sizeof(to), "%s/%s/modules", to_dir,
			  dent->d_name);
		FUNC5(to_subdir, sizeof(to_subdir), "%s/%s",
			  to_dir, dent->d_name);
		if (!FUNC1(from, to) &&
		    FUNC4(from_dir, to_subdir)) {
			FUNC6(to_dir, to_subdir, to_dir_sz);
			ret = 0;
			break;
		}
	}

	FUNC0(d);

	return ret;
}