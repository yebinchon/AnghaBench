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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  intel_pt_enable_logging ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (union perf_event*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(union perf_event *event)
{
	FILE *f = FUNC0();

	if (!intel_pt_enable_logging || !f)
		return;

	FUNC1(event, f);
}