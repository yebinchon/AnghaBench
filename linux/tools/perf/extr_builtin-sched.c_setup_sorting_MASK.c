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
struct perf_sched {int /*<<< orphan*/  cmp_pid; int /*<<< orphan*/  sort_list; int /*<<< orphan*/  sort_order; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char const* const*,struct option const*,char*,char*) ; 

__attribute__((used)) static void FUNC5(struct perf_sched *sched, const struct option *options,
			  const char * const usage_msg[])
{
	char *tmp, *tok, *str = FUNC2(sched->sort_order);

	for (tok = FUNC3(str, ", ", &tmp);
			tok; tok = FUNC3(NULL, ", ", &tmp)) {
		if (FUNC1(tok, &sched->sort_list) < 0) {
			FUNC4(usage_msg, options,
					"Unknown --sort key: `%s'", tok);
		}
	}

	FUNC0(str);

	FUNC1("pid", &sched->cmp_pid);
}