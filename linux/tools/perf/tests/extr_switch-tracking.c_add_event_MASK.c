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
typedef  union perf_event {int dummy; } perf_event ;
struct perf_sample {scalar_t__ time; } ;
struct list_head {int dummy; } ;
struct evlist {int dummy; } ;
struct event_node {scalar_t__ event_time; int /*<<< orphan*/  list; union perf_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct event_node* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct evlist*,union perf_event*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct evlist *evlist, struct list_head *events,
		     union perf_event *event)
{
	struct perf_sample sample;
	struct event_node *node;

	node = FUNC1(sizeof(struct event_node));
	if (!node) {
		FUNC3("malloc failed\n");
		return -1;
	}
	node->event = event;
	FUNC0(&node->list, events);

	if (FUNC2(evlist, event, &sample)) {
		FUNC3("perf_evlist__parse_sample failed\n");
		return -1;
	}

	if (!sample.time) {
		FUNC3("event with no time\n");
		return -1;
	}

	node->event_time = sample.time;

	return 0;
}