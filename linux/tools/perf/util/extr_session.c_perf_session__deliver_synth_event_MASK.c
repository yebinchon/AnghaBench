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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
union perf_event {TYPE_1__ header; } ;
struct perf_tool {int dummy; } ;
struct perf_session {int /*<<< orphan*/  machines; struct perf_tool* tool; struct evlist* evlist; } ;
struct perf_sample {int dummy; } ;
struct evlist {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_RECORD_USER_TYPE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct evlist*,union perf_event*,struct perf_sample*,struct perf_tool*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct perf_session*,union perf_event*,int /*<<< orphan*/ ) ; 

int FUNC3(struct perf_session *session,
				      union perf_event *event,
				      struct perf_sample *sample)
{
	struct evlist *evlist = session->evlist;
	struct perf_tool *tool = session->tool;

	FUNC0(&evlist->stats, event->header.type);

	if (event->header.type >= PERF_RECORD_USER_TYPE_START)
		return FUNC2(session, event, 0);

	return FUNC1(&session->machines, evlist, event, sample, tool, 0);
}