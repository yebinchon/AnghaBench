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
struct probe_trace_event {int dummy; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int EINVAL ; 
 int STRERR_BUFSIZE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe_event_dry_run ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (struct probe_trace_event*) ; 
 int FUNC6 (int,char*,scalar_t__) ; 

int FUNC7(int fd, struct probe_trace_event *tev)
{
	int ret = 0;
	char *buf = FUNC5(tev);
	char sbuf[STRERR_BUFSIZE];

	if (!buf) {
		FUNC1("Failed to synthesize probe trace event.\n");
		return -EINVAL;
	}

	FUNC1("Writing event: %s\n", buf);
	if (!probe_event_dry_run) {
		if (FUNC6(fd, buf, FUNC4(buf)) < (int)FUNC4(buf)) {
			ret = -errno;
			FUNC2("Failed to write event: %s\n",
				   FUNC3(errno, sbuf, sizeof(sbuf)));
		}
	}
	FUNC0(buf);

	return ret;
}