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
struct trace_export {int /*<<< orphan*/  next; } ;
struct ring_buffer_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ftrace_exports_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct trace_export* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_export*,struct ring_buffer_event*) ; 

__attribute__((used)) static void FUNC4(struct ring_buffer_event *event)
{
	struct trace_export *export;

	FUNC0();

	export = FUNC2(ftrace_exports_list);
	while (export) {
		FUNC3(export, event);
		export = FUNC2(export->next);
	}

	FUNC1();
}