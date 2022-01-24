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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct statx_timestamp {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static void FUNC6(const char *field, struct statx_timestamp *ts)
{
	struct tm tm;
	time_t tim;
	char buffer[100];
	int len;

	tim = ts->tv_sec;
	if (!FUNC2(&tim, &tm)) {
		FUNC3("localtime_r");
		FUNC0(1);
	}
	len = FUNC5(buffer, 100, "%F %T", &tm);
	if (len == 0) {
		FUNC3("strftime");
		FUNC0(1);
	}
	FUNC4("%s", field);
	FUNC1(buffer, 1, len, stdout);
	FUNC4(".%09u", ts->tv_nsec);
	len = FUNC5(buffer, 100, "%z", &tm);
	if (len == 0) {
		FUNC3("strftime2");
		FUNC0(1);
	}
	FUNC1(buffer, 1, len, stdout);
	FUNC4("\n");
}