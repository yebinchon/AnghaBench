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
struct trace_probe {int dummy; } ;
struct trace_event_file {int dummy; } ;
struct trace_event_call {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  TP_FLAG_PROFILE ; 
 int /*<<< orphan*/  TP_FLAG_TRACE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_probe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_probe*,struct trace_event_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_probe*) ; 
 struct trace_probe* FUNC6 (struct trace_event_call*) ; 
 int /*<<< orphan*/  FUNC7 (struct trace_probe*,struct trace_event_file*) ; 

__attribute__((used)) static int FUNC8(struct trace_event_call *call,
				struct trace_event_file *file)
{
	struct trace_probe *tp;

	tp = FUNC6(call);
	if (FUNC0(!tp))
		return -ENODEV;

	if (file) {
		if (!FUNC3(tp, file))
			return -ENOENT;
		if (!FUNC4(tp))
			goto out;
		FUNC2(tp, TP_FLAG_TRACE);
	} else
		FUNC2(tp, TP_FLAG_PROFILE);

	if (!FUNC5(tp))
		FUNC1(tp);

 out:
	if (file)
		/*
		 * Synchronization is done in below function. For perf event,
		 * file == NULL and perf_trace_event_unreg() calls
		 * tracepoint_synchronize_unregister() to ensure synchronize
		 * event. We don't need to care about it.
		 */
		FUNC7(tp, file);

	return 0;
}