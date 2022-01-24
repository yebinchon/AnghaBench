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
struct bench_mem_info {TYPE_1__* functions; int /*<<< orphan*/  usage; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {char* name; char* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bench_mem_info*,int,size_t,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* function_str ; 
 int FUNC2 () ; 
 double nr_loops ; 
 int /*<<< orphan*/  options ; 
 int FUNC3 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* size_str ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ use_cycles ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv, struct bench_mem_info *info)
{
	int i;
	size_t size;
	double size_total;

	argc = FUNC3(argc, argv, options, info->usage, 0);

	if (use_cycles) {
		i = FUNC2();
		if (i < 0) {
			FUNC1(stderr, "Failed to open cycles counter\n");
			return i;
		}
	}

	size = (size_t)FUNC4((char *)size_str);
	size_total = (double)size * nr_loops;

	if ((s64)size <= 0) {
		FUNC1(stderr, "Invalid size:%s\n", size_str);
		return 1;
	}

	if (!FUNC7(function_str, "all", 3)) {
		for (i = 0; info->functions[i].name; i++)
			FUNC0(info, i, size, size_total);
		return 0;
	}

	for (i = 0; info->functions[i].name; i++) {
		if (!FUNC6(info->functions[i].name, function_str))
			break;
	}
	if (!info->functions[i].name) {
		if (FUNC6(function_str, "help") && FUNC6(function_str, "h"))
			FUNC5("Unknown function: %s\n", function_str);
		FUNC5("Available functions:\n");
		for (i = 0; info->functions[i].name; i++) {
			FUNC5("\t%s ... %s\n",
			       info->functions[i].name, info->functions[i].desc);
		}
		return 1;
	}

	FUNC0(info, i, size, size_total);

	return 0;
}