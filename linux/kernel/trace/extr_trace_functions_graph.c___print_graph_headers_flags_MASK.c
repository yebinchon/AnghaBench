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
typedef  int u32 ;
struct trace_array {int trace_flags; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int TRACE_GRAPH_PRINT_ABS_TIME ; 
 int TRACE_GRAPH_PRINT_CPU ; 
 int TRACE_GRAPH_PRINT_DURATION ; 
 int TRACE_GRAPH_PRINT_PROC ; 
 int TRACE_GRAPH_PRINT_REL_TIME ; 
 int TRACE_ITER_LATENCY_FMT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct trace_array *tr,
					struct seq_file *s, u32 flags)
{
	int lat = tr->trace_flags & TRACE_ITER_LATENCY_FMT;

	if (lat)
		FUNC0(s, flags);

	/* 1st line */
	FUNC1(s, '#');
	if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
		FUNC2(s, "     TIME       ");
	if (flags & TRACE_GRAPH_PRINT_REL_TIME)
		FUNC2(s, "   REL TIME     ");
	if (flags & TRACE_GRAPH_PRINT_CPU)
		FUNC2(s, " CPU");
	if (flags & TRACE_GRAPH_PRINT_PROC)
		FUNC2(s, "  TASK/PID       ");
	if (lat)
		FUNC2(s, "||||   ");
	if (flags & TRACE_GRAPH_PRINT_DURATION)
		FUNC2(s, "  DURATION   ");
	FUNC2(s, "               FUNCTION CALLS\n");

	/* 2nd line */
	FUNC1(s, '#');
	if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
		FUNC2(s, "      |         ");
	if (flags & TRACE_GRAPH_PRINT_REL_TIME)
		FUNC2(s, "      |         ");
	if (flags & TRACE_GRAPH_PRINT_CPU)
		FUNC2(s, " |  ");
	if (flags & TRACE_GRAPH_PRINT_PROC)
		FUNC2(s, "   |    |        ");
	if (lat)
		FUNC2(s, "||||   ");
	if (flags & TRACE_GRAPH_PRINT_DURATION)
		FUNC2(s, "   |   |      ");
	FUNC2(s, "               |   |   |   |\n");
}