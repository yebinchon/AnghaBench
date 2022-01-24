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
struct rblist {int /*<<< orphan*/  node_new; int /*<<< orphan*/  node_cmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  metric_event_cmp ; 
 int /*<<< orphan*/  metric_event_new ; 
 int /*<<< orphan*/  FUNC0 (struct rblist*) ; 

__attribute__((used)) static void FUNC1(struct rblist *metric_events)
{
	FUNC0(metric_events);
	metric_events->node_cmp = metric_event_cmp;
	metric_events->node_new = metric_event_new;
}