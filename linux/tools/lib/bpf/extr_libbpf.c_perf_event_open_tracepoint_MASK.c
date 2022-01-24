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
struct perf_event_attr {int size; int config; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  errmsg ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_FLAG_FD_CLOEXEC ; 
 int /*<<< orphan*/  PERF_TYPE_TRACEPOINT ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  __NR_perf_event_open ; 
 int FUNC0 (char const*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct perf_event_attr*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *tp_category,
				      const char *tp_name)
{
	struct perf_event_attr attr = {};
	char errmsg[STRERR_BUFSIZE];
	int tp_id, pfd, err;

	tp_id = FUNC0(tp_category, tp_name);
	if (tp_id < 0) {
		FUNC2("failed to determine tracepoint '%s/%s' perf event ID: %s\n",
			   tp_category, tp_name,
			   FUNC1(tp_id, errmsg, sizeof(errmsg)));
		return tp_id;
	}

	attr.type = PERF_TYPE_TRACEPOINT;
	attr.size = sizeof(attr);
	attr.config = tp_id;

	pfd = FUNC3(__NR_perf_event_open, &attr, -1 /* pid */, 0 /* cpu */,
		      -1 /* group_fd */, PERF_FLAG_FD_CLOEXEC);
	if (pfd < 0) {
		err = -errno;
		FUNC2("tracepoint '%s/%s' perf_event_open() failed: %s\n",
			   tp_category, tp_name,
			   FUNC1(err, errmsg, sizeof(errmsg)));
		return err;
	}
	return pfd;
}