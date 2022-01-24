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
struct perf_time_interval {int dummy; } ;

/* Variables and functions */
 struct perf_time_interval* FUNC0 (int,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 

struct perf_time_interval *FUNC3(const char *ostr, int *size)
{
	const char *p1, *p2;
	int i = 1;
	struct perf_time_interval *ptime;

	/*
	 * At least allocate one time range.
	 */
	if (!ostr)
		goto alloc;

	p1 = ostr;
	while (p1 < ostr + FUNC2(ostr)) {
		p2 = FUNC1(p1, ',');
		if (!p2)
			break;

		p1 = p2 + 1;
		i++;
	}

alloc:
	*size = i;
	ptime = FUNC0(i, sizeof(*ptime));
	return ptime;
}