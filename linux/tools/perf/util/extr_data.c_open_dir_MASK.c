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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
struct perf_data {int /*<<< orphan*/  path; TYPE_1__ file; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRWXU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct perf_data*) ; 
 scalar_t__ FUNC3 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct perf_data *data)
{
	int ret;

	/*
	 * So far we open only the header, so we can read the data version and
	 * layout.
	 */
	if (FUNC0(&data->file.path, "%d/header", data->path) < 0)
		return -1;

	if (FUNC3(data) &&
	    FUNC1(data->path, S_IRWXU) < 0)
		return -1;

	ret = FUNC2(data);

	/* Cleanup whatever we managed to create so far. */
	if (ret && FUNC3(data))
		FUNC4(data->path);

	return ret;
}