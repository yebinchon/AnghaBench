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
struct tm {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  dt ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 

int FUNC4(char *buf, size_t sz)
{
	struct timeval tv;
	struct tm tm;
	char dt[32];

	if (FUNC0(&tv, NULL) || !FUNC1(&tv.tv_sec, &tm))
		return -1;

	if (!FUNC3(dt, sizeof(dt), "%Y%m%d%H%M%S", &tm))
		return -1;

	FUNC2(buf, sz, "%s%02u", dt, (unsigned)tv.tv_usec / 10000);

	return 0;
}