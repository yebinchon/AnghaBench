#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long dump_size; void* print_limit; void* min_percent; } ;

/* Variables and functions */
 TYPE_1__ callchain_param ; 
 int FUNC0 (char const*,unsigned long*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,TYPE_1__*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 void* FUNC8 (char const*,char**) ; 

int FUNC9(const char *var, const char *value)
{
	char *endptr;

	if (!FUNC7(var, "call-graph."))
		return 0;
	var += sizeof("call-graph.") - 1;

	if (!FUNC6(var, "record-mode"))
		return FUNC3(value, &callchain_param);
	if (!FUNC6(var, "dump-size")) {
		unsigned long size = 0;
		int ret;

		ret = FUNC0(value, &size);
		callchain_param.dump_size = size;

		return ret;
	}
	if (!FUNC6(var, "print-type")){
		int ret;
		ret = FUNC1(value);
		if (ret == -1)
			FUNC5("Invalid callchain mode: %s\n", value);
		return ret;
	}
	if (!FUNC6(var, "order")){
		int ret;
		ret = FUNC2(value);
		if (ret == -1)
			FUNC5("Invalid callchain order: %s\n", value);
		return ret;
	}
	if (!FUNC6(var, "sort-key")){
		int ret;
		ret = FUNC4(value);
		if (ret == -1)
			FUNC5("Invalid callchain sort key: %s\n", value);
		return ret;
	}
	if (!FUNC6(var, "threshold")) {
		callchain_param.min_percent = FUNC8(value, &endptr);
		if (value == endptr) {
			FUNC5("Invalid callchain threshold: %s\n", value);
			return -1;
		}
	}
	if (!FUNC6(var, "print-limit")) {
		callchain_param.print_limit = FUNC8(value, &endptr);
		if (value == endptr) {
			FUNC5("Invalid callchain print limit: %s\n", value);
			return -1;
		}
	}

	return 0;
}