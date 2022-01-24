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
struct TYPE_2__ {scalar_t__ type; } ;
union perf_event {TYPE_1__ header; } ;
struct switch_tracking {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ PERF_RECORD_COMM ; 
 scalar_t__ PERF_RECORD_SAMPLE ; 
 int FUNC0 (struct switch_tracking*,union perf_event*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct evlist*,union perf_event*,struct switch_tracking*) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist, union perf_event *event,
			 struct switch_tracking *switch_tracking)
{
	if (event->header.type == PERF_RECORD_SAMPLE)
		return FUNC2(evlist, event, switch_tracking);

	if (event->header.type == PERF_RECORD_COMM) {
		int err, done = 0;

		err = FUNC0(switch_tracking, event, "Test COMM 1", 0);
		if (err < 0)
			return -1;
		done += err;
		err = FUNC0(switch_tracking, event, "Test COMM 2", 1);
		if (err < 0)
			return -1;
		done += err;
		err = FUNC0(switch_tracking, event, "Test COMM 3", 2);
		if (err < 0)
			return -1;
		done += err;
		err = FUNC0(switch_tracking, event, "Test COMM 4", 3);
		if (err < 0)
			return -1;
		done += err;
		if (done != 1) {
			FUNC1("Unexpected comm event\n");
			return -1;
		}
	}

	return 0;
}