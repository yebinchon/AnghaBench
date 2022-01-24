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
struct perf_event_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __open_attr__fprintf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* graph_dotted_line ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct perf_event_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int verbose ; 

__attribute__((used)) static void FUNC2(struct perf_event_attr *attr)
{
	if (verbose >= 2) {
		FUNC0(stderr, "%.60s\n", graph_dotted_line);
		FUNC0(stderr, "perf_event_attr:\n");
		FUNC1(stderr, attr, __open_attr__fprintf, NULL);
		FUNC0(stderr, "%.60s\n", graph_dotted_line);
	}
}