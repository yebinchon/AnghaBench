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
struct perf_ftrace {char const* tracer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value, void *cb)
{
	struct perf_ftrace *ftrace = cb;

	if (!FUNC2(var, "ftrace."))
		return 0;

	if (FUNC1(var, "ftrace.tracer"))
		return -1;

	if (!FUNC1(value, "function_graph") ||
	    !FUNC1(value, "function")) {
		ftrace->tracer = value;
		return 0;
	}

	FUNC0("Please select \"function_graph\" (default) or \"function\"\n");
	return -1;
}