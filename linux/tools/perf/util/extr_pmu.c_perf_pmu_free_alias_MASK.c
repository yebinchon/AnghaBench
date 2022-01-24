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
struct perf_pmu_alias {int /*<<< orphan*/  terms; int /*<<< orphan*/  metric_name; int /*<<< orphan*/  metric_expr; int /*<<< orphan*/  str; int /*<<< orphan*/  topic; int /*<<< orphan*/  long_desc; int /*<<< orphan*/  desc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_pmu_alias*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_pmu_alias *newalias)
{
	FUNC2(&newalias->name);
	FUNC2(&newalias->desc);
	FUNC2(&newalias->long_desc);
	FUNC2(&newalias->topic);
	FUNC2(&newalias->str);
	FUNC2(&newalias->metric_expr);
	FUNC2(&newalias->metric_name);
	FUNC1(&newalias->terms);
	FUNC0(newalias);
}