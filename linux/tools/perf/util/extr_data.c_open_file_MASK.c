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
struct TYPE_2__ {int fd; int /*<<< orphan*/  path; } ;
struct perf_data {TYPE_1__ file; } ;

/* Variables and functions */
 int FUNC0 (struct perf_data*) ; 
 int FUNC1 (struct perf_data*) ; 
 scalar_t__ FUNC2 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct perf_data *data)
{
	int fd;

	fd = FUNC2(data) ?
	     FUNC0(data) : FUNC1(data);

	if (fd < 0) {
		FUNC3(&data->file.path);
		return -1;
	}

	data->file.fd = fd;
	return 0;
}