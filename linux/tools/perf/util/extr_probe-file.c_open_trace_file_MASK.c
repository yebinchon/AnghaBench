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

/* Variables and functions */
 int O_APPEND ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int PATH_MAX ; 
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char const*) ; 
 int errno ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  probe_event_dry_run ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(const char *trace_file, bool readwrite)
{
	char buf[PATH_MAX];
	int ret;

	ret = FUNC0(buf, PATH_MAX, "%s/%s", FUNC3(), trace_file);
	if (ret >= 0) {
		FUNC2("Opening %s write=%d\n", buf, readwrite);
		if (readwrite && !probe_event_dry_run)
			ret = FUNC1(buf, O_RDWR | O_APPEND, 0);
		else
			ret = FUNC1(buf, O_RDONLY, 0);

		if (ret < 0)
			ret = -errno;
	}
	return ret;
}