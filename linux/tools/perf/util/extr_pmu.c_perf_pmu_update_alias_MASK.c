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
struct perf_pmu_alias {int /*<<< orphan*/  unit; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  per_pkg; int /*<<< orphan*/  scale; int /*<<< orphan*/  str; int /*<<< orphan*/  name; int /*<<< orphan*/  metric_name; int /*<<< orphan*/  metric_expr; int /*<<< orphan*/  topic; int /*<<< orphan*/  long_desc; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct perf_pmu_alias *old,
				  struct perf_pmu_alias *newalias)
{
	FUNC1(old->name, "desc", &old->desc, &newalias->desc);
	FUNC1(old->name, "long_desc", &old->long_desc,
			    &newalias->long_desc);
	FUNC1(old->name, "topic", &old->topic, &newalias->topic);
	FUNC1(old->name, "metric_expr", &old->metric_expr,
			    &newalias->metric_expr);
	FUNC1(old->name, "metric_name", &old->metric_name,
			    &newalias->metric_name);
	FUNC1(old->name, "value", &old->str, &newalias->str);
	old->scale = newalias->scale;
	old->per_pkg = newalias->per_pkg;
	old->snapshot = newalias->snapshot;
	FUNC0(old->unit, newalias->unit, sizeof(old->unit));
}