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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int TRACE_ITER_LATENCY_FMT ; 
 int TRACE_ITER_OVERWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int save_flags ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*) ; 
 int wakeup_busy ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*) ; 

__attribute__((used)) static void FUNC4(struct trace_array *tr)
{
	int lat_flag = save_flags & TRACE_ITER_LATENCY_FMT;
	int overwrite_flag = save_flags & TRACE_ITER_OVERWRITE;

	FUNC2(tr);
	/* make sure we put back any tasks we are tracing */
	FUNC3(tr);

	FUNC1(tr, TRACE_ITER_LATENCY_FMT, lat_flag);
	FUNC1(tr, TRACE_ITER_OVERWRITE, overwrite_flag);
	FUNC0(tr);
	wakeup_busy = false;
}