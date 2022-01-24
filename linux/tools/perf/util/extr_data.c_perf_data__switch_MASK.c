#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fd; } ;
struct perf_data {TYPE_1__ file; int /*<<< orphan*/  path; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct perf_data*) ; 
 int FUNC5 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(struct perf_data *data,
			   const char *postfix,
			   size_t pos, bool at_exit,
			   char **new_filepath)
{
	int ret;

	if (FUNC1(data))
		return -EINVAL;
	if (FUNC4(data))
		return -EINVAL;

	if (FUNC0(new_filepath, "%d.%s", data->path, postfix) < 0)
		return -ENOMEM;

	/*
	 * Only fire a warning, don't return error, continue fill
	 * original file.
	 */
	if (FUNC8(data->path, *new_filepath))
		FUNC7("Failed to rename %s to %s\n", data->path, *new_filepath);

	if (!at_exit) {
		FUNC2(data->file.fd);
		ret = FUNC5(data);
		if (ret < 0)
			goto out;

		if (FUNC3(data->file.fd, pos, SEEK_SET) == (off_t)-1) {
			ret = -errno;
			FUNC6("Failed to lseek to %zu: %s",
				 pos, FUNC9(errno));
			goto out;
		}
	}
	ret = data->file.fd;
out:
	return ret;
}