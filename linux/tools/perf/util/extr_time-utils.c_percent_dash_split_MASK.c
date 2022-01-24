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
typedef  int /*<<< orphan*/  u64 ;
struct perf_time_interval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (double*,char*) ; 
 int FUNC2 (struct perf_time_interval*,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**,char**,char*,char) ; 

__attribute__((used)) static int FUNC4(char *str, struct perf_time_interval *ptime,
			      u64 start, u64 end)
{
	char *start_str = NULL, *end_str;
	double start_pcnt, end_pcnt;
	int ret;

	/*
	 * Example: 0%-10%
	 */

	ret = FUNC3(&start_str, &end_str, str, '-');
	if (ret || !start_str)
		return ret;

	if ((FUNC1(&start_pcnt, start_str) != 0) ||
	    (FUNC1(&end_pcnt, end_str) != 0)) {
		FUNC0(start_str);
		return -1;
	}

	FUNC0(start_str);

	return FUNC2(ptime, start_pcnt, end_pcnt, start, end);
}