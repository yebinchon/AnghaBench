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
typedef  scalar_t__ u32 ;
struct trace_array {int dummy; } ;

/* Variables and functions */
 scalar_t__ TRACE_GRAPH_GRAPH_TIME ; 
 scalar_t__ TRACE_GRAPH_PRINT_IRQS ; 
 scalar_t__ TRACE_GRAPH_SLEEP_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ftrace_graph_skip_irqs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct trace_array *tr, u32 old_flags, u32 bit, int set)
{
	if (bit == TRACE_GRAPH_PRINT_IRQS)
		ftrace_graph_skip_irqs = !set;

	if (bit == TRACE_GRAPH_SLEEP_TIME)
		FUNC1(set);

	if (bit == TRACE_GRAPH_GRAPH_TIME)
		FUNC0(set);

	return 0;
}