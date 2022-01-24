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
struct perf_time_interval {int dummy; } ;
struct perf_session {TYPE_1__* evlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_sample_time; int /*<<< orphan*/  first_sample_time; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct perf_time_interval*) ; 
 int FUNC1 (struct perf_time_interval*,char const*,int) ; 
 int FUNC2 (struct perf_time_interval*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct perf_time_interval* FUNC3 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*,char) ; 

int FUNC6(const char *time_str,
				struct perf_session *session,
				struct perf_time_interval **ranges,
				int *range_size, int *range_num)
{
	bool has_percent = FUNC5(time_str, '%');
	struct perf_time_interval *ptime_range;
	int size, num, ret = -EINVAL;

	ptime_range = FUNC3(time_str, &size);
	if (!ptime_range)
		return -ENOMEM;

	if (has_percent) {
		if (session->evlist->first_sample_time == 0 &&
		    session->evlist->last_sample_time == 0) {
			FUNC4("HINT: no first/last sample time found in perf data.\n"
			       "Please use latest perf binary to execute 'perf record'\n"
			       "(if '--buildid-all' is enabled, please set '--timestamp-boundary').\n");
			goto error;
		}

		num = FUNC2(
				ptime_range, size,
				time_str,
				session->evlist->first_sample_time,
				session->evlist->last_sample_time);
	} else {
		num = FUNC1(ptime_range, time_str, size);
	}

	if (num < 0)
		goto error_invalid;

	*range_size = size;
	*range_num = num;
	*ranges = ptime_range;
	return 0;

error_invalid:
	FUNC4("Invalid time string\n");
error:
	FUNC0(ptime_range);
	return ret;
}