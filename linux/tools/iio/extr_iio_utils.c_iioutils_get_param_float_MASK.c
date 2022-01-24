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
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FUNC0 (char**,char*,char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,float*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 

int FUNC9(float *output, const char *param_name,
			     const char *device_dir, const char *name,
			     const char *generic_name)
{
	FILE *sysfsfp;
	int ret;
	DIR *dp;
	char *builtname, *builtname_generic;
	char *filename = NULL;
	const struct dirent *ent;

	ret = FUNC0(&builtname, "%s_%s", name, param_name);
	if (ret < 0)
		return -ENOMEM;

	ret = FUNC0(&builtname_generic,
		       "%s_%s", generic_name, param_name);
	if (ret < 0) {
		ret = -ENOMEM;
		goto error_free_builtname;
	}

	dp = FUNC5(device_dir);
	if (!dp) {
		ret = -errno;
		goto error_free_builtname_generic;
	}

	ret = -ENOENT;
	while (ent = FUNC7(dp), ent)
		if ((FUNC8(builtname, ent->d_name) == 0) ||
		    (FUNC8(builtname_generic, ent->d_name) == 0)) {
			ret = FUNC0(&filename,
				       "%s/%s", device_dir, ent->d_name);
			if (ret < 0) {
				ret = -ENOMEM;
				goto error_closedir;
			}

			sysfsfp = FUNC2(filename, "r");
			if (!sysfsfp) {
				ret = -errno;
				goto error_free_filename;
			}

			errno = 0;
			if (FUNC4(sysfsfp, "%f", output) != 1)
				ret = errno ? -errno : -ENODATA;

			break;
		}
error_free_filename:
	if (filename)
		FUNC3(filename);

error_closedir:
	if (FUNC1(dp) == -1)
		FUNC6("iioutils_get_param_float(): Failed to close directory");

error_free_builtname_generic:
	FUNC3(builtname_generic);
error_free_builtname:
	FUNC3(builtname);

	return ret;
}