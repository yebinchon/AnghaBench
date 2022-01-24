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
struct trace_export {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ftrace_export_lock ; 
 int /*<<< orphan*/  ftrace_exports_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct trace_export*) ; 

int FUNC3(struct trace_export *export)
{
	int ret;

	FUNC0(&ftrace_export_lock);

	ret = FUNC2(&ftrace_exports_list, export);

	FUNC1(&ftrace_export_lock);

	return ret;
}