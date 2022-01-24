#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
union perf_event {TYPE_2__ header; } ;
typedef  unsigned long long u64 ;
struct perf_tool {scalar_t__ ordered_events; } ;
struct TYPE_3__ {scalar_t__ needs_swap; } ;
struct perf_session {TYPE_1__ header; struct perf_tool* tool; struct evlist* evlist; } ;
struct evlist {int /*<<< orphan*/  stats; } ;
typedef  int s64 ;

/* Variables and functions */
 int EINVAL ; 
 int ETIME ; 
 int /*<<< orphan*/  PERF_RECORD_HEADER_MAX ; 
 int /*<<< orphan*/  PERF_RECORD_USER_TYPE_START ; 
 int /*<<< orphan*/  FUNC0 (union perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct evlist*,union perf_event*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (struct evlist*) ; 
 int FUNC4 (struct perf_session*,union perf_event*,struct perf_tool*,unsigned long long) ; 
 int FUNC5 (struct perf_session*,union perf_event*,unsigned long long) ; 
 int FUNC6 (struct perf_session*,union perf_event*,unsigned long long,unsigned long long) ; 

__attribute__((used)) static s64 FUNC7(struct perf_session *session,
				       union perf_event *event, u64 file_offset)
{
	struct evlist *evlist = session->evlist;
	struct perf_tool *tool = session->tool;
	int ret;

	if (session->header.needs_swap)
		FUNC0(event, FUNC3(evlist));

	if (event->header.type >= PERF_RECORD_HEADER_MAX)
		return -EINVAL;

	FUNC1(&evlist->stats, event->header.type);

	if (event->header.type >= PERF_RECORD_USER_TYPE_START)
		return FUNC5(session, event, file_offset);

	if (tool->ordered_events) {
		u64 timestamp = -1ULL;

		ret = FUNC2(evlist, event, &timestamp);
		if (ret && ret != -1)
			return ret;

		ret = FUNC6(session, event, timestamp, file_offset);
		if (ret != -ETIME)
			return ret;
	}

	return FUNC4(session, event, tool, file_offset);
}