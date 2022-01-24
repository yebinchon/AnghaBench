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
typedef  union perf_event {int dummy; } perf_event ;
typedef  int /*<<< orphan*/  u64 ;
struct perf_tool {int dummy; } ;
struct perf_session {int /*<<< orphan*/  evlist; int /*<<< orphan*/  machines; } ;
struct perf_sample {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct perf_session*,union perf_event*,struct perf_sample*,struct perf_tool*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,union perf_event*,struct perf_sample*,struct perf_tool*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,union perf_event*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct perf_session *session,
				       union perf_event *event,
				       struct perf_tool *tool,
				       u64 file_offset)
{
	struct perf_sample sample;
	int ret;

	ret = FUNC2(session->evlist, event, &sample);
	if (ret) {
		FUNC3("Can't parse sample, err = %d\n", ret);
		return ret;
	}

	ret = FUNC0(session, event, &sample, tool);
	if (ret < 0)
		return ret;
	if (ret > 0)
		return 0;

	return FUNC1(&session->machines, session->evlist,
				       event, &sample, tool, file_offset);
}