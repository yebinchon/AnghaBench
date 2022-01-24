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
struct perf_data {char* path; int /*<<< orphan*/  is_dir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_data*) ; 
 scalar_t__ FUNC1 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_data*) ; 
 int FUNC3 (struct perf_data*) ; 
 int FUNC4 (struct perf_data*) ; 
 scalar_t__ FUNC5 (struct perf_data*) ; 
 scalar_t__ FUNC6 (struct perf_data*) ; 

int FUNC7(struct perf_data *data)
{
	if (FUNC1(data))
		return 0;

	if (!data->path)
		data->path = "perf.data";

	if (FUNC0(data))
		return -1;

	if (FUNC6(data))
		data->is_dir = FUNC2(data);

	return FUNC5(data) ?
	       FUNC3(data) : FUNC4(data);
}