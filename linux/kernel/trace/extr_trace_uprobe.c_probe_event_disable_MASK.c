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
 int /*<<< orphan*/  TP_FLAG_PROFILE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_probe*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct trace_probe*) ; 
 struct trace_probe* FUNC4 (struct trace_event_call*) ; 
 scalar_t__ FUNC5 (struct trace_probe*,struct trace_event_file*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct trace_event_call *call,
				struct trace_event_file *file)
{
	struct trace_probe *tp;

	tp = FUNC4(call);
	if (FUNC0(!tp))
		return;

	if (!FUNC3(tp))
		return;

	if (file) {
		if (FUNC5(tp, file) < 0)
			return;

		if (FUNC3(tp))
			return;
	} else
		FUNC2(tp, TP_FLAG_PROFILE);

	FUNC1(tp);
	FUNC6();
}