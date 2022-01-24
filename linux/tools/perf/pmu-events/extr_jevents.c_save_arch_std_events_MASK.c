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
struct event_struct {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_EVENT_FIELD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FREE_EVENT_FIELD ; 
 int /*<<< orphan*/  arch_std_events ; 
 int /*<<< orphan*/  FUNC1 (struct event_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct event_struct* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct event_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void *data, char *name, char *event,
				char *desc, char *long_desc, char *pmu,
				char *unit, char *perpkg, char *metric_expr,
				char *metric_name, char *metric_group)
{
	struct event_struct *es;

	es = FUNC3(sizeof(*es));
	if (!es)
		return -ENOMEM;
	FUNC4(es, 0, sizeof(*es));
	FUNC0(ADD_EVENT_FIELD);
	FUNC2(&es->list, &arch_std_events);
	return 0;
out_free:
	FUNC0(FREE_EVENT_FIELD);
	FUNC1(es);
	return -ENOMEM;
}