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
struct perf_event_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVENT_IOC_MODIFY_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct perf_event_attr*) ; 
 int /*<<< orphan*/  the_var ; 
 int FUNC2 (void*,struct perf_event_attr*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct perf_event_attr attr;
	int fd, ret = 1;

	fd = FUNC2((void *) &the_var, &attr);
	if (fd > 0) {
		ret = FUNC1(fd, PERF_EVENT_IOC_MODIFY_ATTRIBUTES, &attr);
		FUNC0(fd);
	}

	return ret ? 0 : 1;
}