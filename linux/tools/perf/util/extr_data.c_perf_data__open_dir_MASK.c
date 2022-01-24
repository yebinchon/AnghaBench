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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct perf_data_file {int fd; int /*<<< orphan*/  size; int /*<<< orphan*/  path; } ;
struct TYPE_2__ {scalar_t__ version; int nr; struct perf_data_file* files; } ;
struct perf_data {char* path; TYPE_1__ dir; int /*<<< orphan*/  is_dir; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 scalar_t__ PERF_DIR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_data_file*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 struct perf_data_file* FUNC6 (struct perf_data_file*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

int FUNC11(struct perf_data *data)
{
	struct perf_data_file *files = NULL;
	struct dirent *dent;
	int ret = -1;
	DIR *dir;
	int nr = 0;

	if (FUNC1(!data->is_dir))
		return -EINVAL;

	/* The version is provided by DIR_FORMAT feature. */
	if (FUNC1(data->dir.version != PERF_DIR_VERSION))
		return -1;

	dir = FUNC4(data->path);
	if (!dir)
		return -EINVAL;

	while ((dent = FUNC5(dir)) != NULL) {
		struct perf_data_file *file;
		char path[PATH_MAX];
		struct stat st;

		FUNC7(path, sizeof(path), "%s/%s", data->path, dent->d_name);
		if (FUNC8(path, &st))
			continue;

		if (!FUNC0(st.st_mode) || FUNC10(dent->d_name, "data", 4))
			continue;

		ret = -ENOMEM;

		file = FUNC6(files, (nr + 1) * sizeof(*files));
		if (!file)
			goto out_err;

		files = file;
		file = &files[nr++];

		file->path = FUNC9(path);
		if (!file->path)
			goto out_err;

		ret = FUNC3(file->path, O_RDONLY);
		if (ret < 0)
			goto out_err;

		file->fd = ret;
		file->size = st.st_size;
	}

	if (!files)
		return -EINVAL;

	data->dir.files = files;
	data->dir.nr    = nr;
	return 0;

out_err:
	FUNC2(files, nr);
	return ret;
}