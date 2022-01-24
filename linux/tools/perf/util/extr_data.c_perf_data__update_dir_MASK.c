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
struct stat {int /*<<< orphan*/  st_size; } ;
struct perf_data_file {int /*<<< orphan*/  size; int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {int nr; struct perf_data_file* files; } ;
struct perf_data {TYPE_1__ dir; int /*<<< orphan*/  is_dir; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC2(struct perf_data *data)
{
	int i;

	if (FUNC0(!data->is_dir))
		return -EINVAL;

	for (i = 0; i < data->dir.nr; i++) {
		struct perf_data_file *file = &data->dir.files[i];
		struct stat st;

		if (FUNC1(file->fd, &st))
			return -1;

		file->size = st.st_size;
	}

	return 0;
}