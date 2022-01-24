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
typedef  int /*<<< orphan*/  u64 ;
struct ordered_events {int dummy; } ;
struct ordered_event {int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 struct ordered_event* FUNC0 (struct ordered_events*,union perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct ordered_events*,struct ordered_event*) ; 

__attribute__((used)) static struct ordered_event *
FUNC2(struct ordered_events *oe, u64 timestamp,
		    union perf_event *event)
{
	struct ordered_event *new;

	new = FUNC0(oe, event);
	if (new) {
		new->timestamp = timestamp;
		FUNC1(oe, new);
	}

	return new;
}