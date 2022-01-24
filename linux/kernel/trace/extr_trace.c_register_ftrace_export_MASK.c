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
struct trace_export {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct trace_export*) ; 
 int /*<<< orphan*/  ftrace_export_lock ; 
 int /*<<< orphan*/  ftrace_exports_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct trace_export *export)
{
	if (FUNC0(!export->write))
		return -1;

	FUNC2(&ftrace_export_lock);

	FUNC1(&ftrace_exports_list, export);

	FUNC3(&ftrace_export_lock);

	return 0;
}