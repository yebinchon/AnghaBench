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
typedef  scalar_t__ u64 ;
struct perf_event {scalar_t__ shadow_ctx_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct perf_event *event,
				u64 *now,
				u64 *enabled,
				u64 *running)
{
	u64 ctx_time;

	*now = FUNC1();
	ctx_time = event->shadow_ctx_time + *now;
	FUNC0(event, ctx_time, enabled, running);
}