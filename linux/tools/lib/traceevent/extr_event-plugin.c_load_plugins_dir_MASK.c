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
struct tep_handle {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,struct stat*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(struct tep_handle *tep, const char *suffix,
		 const char *path,
		 void (*load_plugin)(struct tep_handle *tep,
				     const char *path,
				     const char *name,
				     void *data),
		 void *data)
{
	struct dirent *dent;
	struct stat st;
	DIR *dir;
	int ret;

	ret = FUNC4(path, &st);
	if (ret < 0)
		return;

	if (!FUNC0(st.st_mode))
		return;

	dir = FUNC2(path);
	if (!dir)
		return;

	while ((dent = FUNC3(dir))) {
		const char *name = dent->d_name;

		if (FUNC5(name, ".") == 0 ||
		    FUNC5(name, "..") == 0)
			continue;

		/* Only load plugins that end in suffix */
		if (FUNC5(name + (FUNC6(name) - FUNC6(suffix)), suffix) != 0)
			continue;

		load_plugin(tep, path, name, data);
	}

	FUNC1(dir);
}