#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct report {double min_percent; int /*<<< orphan*/  queue_size; } ;
struct TYPE_4__ {double min_percent; } ;
struct TYPE_3__ {void* cumulate_callchain; void* event_group; } ;

/* Variables and functions */
 TYPE_2__ callchain_param ; 
 int /*<<< orphan*/  default_sort_order ; 
 void* FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 double FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value, void *cb)
{
	struct report *rep = cb;

	if (!FUNC2(var, "report.group")) {
		symbol_conf.event_group = FUNC0(var, value);
		return 0;
	}
	if (!FUNC2(var, "report.percent-limit")) {
		double pcnt = FUNC4(value, NULL);

		rep->min_percent = pcnt;
		callchain_param.min_percent = pcnt;
		return 0;
	}
	if (!FUNC2(var, "report.children")) {
		symbol_conf.cumulate_callchain = FUNC0(var, value);
		return 0;
	}
	if (!FUNC2(var, "report.queue-size"))
		return FUNC1(&rep->queue_size, var, value);

	if (!FUNC2(var, "report.sort_order")) {
		default_sort_order = FUNC3(value);
		return 0;
	}

	return 0;
}