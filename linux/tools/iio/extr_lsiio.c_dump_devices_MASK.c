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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ VERBLEVEL_SENSORS ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  iio_dir ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  type_device ; 
 int /*<<< orphan*/  type_trigger ; 
 scalar_t__ verblevel ; 

__attribute__((used)) static int FUNC12(void)
{
	const struct dirent *ent;
	int ret;
	DIR *dp;

	dp = FUNC7(iio_dir);
	if (!dp) {
		FUNC5(stderr, "No industrial I/O devices available\n");
		return -ENODEV;
	}

	while (ent = FUNC10(dp), ent) {
		if (FUNC1(ent->d_name, type_device)) {
			char *dev_dir_name;

			if (FUNC0(&dev_dir_name, "%d%d", iio_dir,
				     ent->d_name) < 0) {
				ret = -ENOMEM;
				goto error_close_dir;
			}

			ret = FUNC3(dev_dir_name);
			if (ret) {
				FUNC6(dev_dir_name);
				goto error_close_dir;
			}

			FUNC6(dev_dir_name);
			if (verblevel >= VERBLEVEL_SENSORS)
				FUNC9("\n");
		}
	}
	FUNC11(dp);
	while (ent = FUNC10(dp), ent) {
		if (FUNC1(ent->d_name, type_trigger)) {
			char *dev_dir_name;

			if (FUNC0(&dev_dir_name, "%d%d", iio_dir,
				     ent->d_name) < 0) {
				ret = -ENOMEM;
				goto error_close_dir;
			}

			ret = FUNC4(dev_dir_name);
			if (ret) {
				FUNC6(dev_dir_name);
				goto error_close_dir;
			}

			FUNC6(dev_dir_name);
		}
	}

	return (FUNC2(dp) == -1) ? -errno : 0;

error_close_dir:
	if (FUNC2(dp) == -1)
		FUNC8("dump_devices(): Failed to close directory");

	return ret;
}