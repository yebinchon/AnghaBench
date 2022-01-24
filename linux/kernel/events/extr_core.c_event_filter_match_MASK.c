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
struct perf_event {int cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int FUNC2 () ; 

__attribute__((used)) static inline int
FUNC3(struct perf_event *event)
{
	return (event->cpu == -1 || event->cpu == FUNC2()) &&
	       FUNC0(event) && FUNC1(event);
}