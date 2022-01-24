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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char*,struct perf_time_interval*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct perf_time_interval *ptime_buf,
			       const char *ostr, u64 start, u64 end, char *c)
{
	char *str;
	int len = FUNC5(ostr), ret;

	/*
	 * c points to '%'.
	 * '%' should be the last character
	 */
	if (ostr + len - 1 != c)
		return -1;

	/*
	 * Construct a string like "xx%/1"
	 */
	str = FUNC1(len + 3);
	if (str == NULL)
		return -ENOMEM;

	FUNC2(str, ostr, len);
	FUNC4(str + len, "/1");

	ret = FUNC3(str, ptime_buf, start, end);
	if (ret == 0)
		ret = 1;

	FUNC0(str);
	return ret;
}