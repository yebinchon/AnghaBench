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
 int FUNC0 (struct trace_array*,int,int /*<<< orphan*/ ) ; 
 int tracer_enabled ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct trace_array *tr, int graph)
{
	int ret;

	ret = FUNC0(tr, graph, 0);

	if (!ret && FUNC1())
		tracer_enabled = 1;
	else
		tracer_enabled = 0;

	return ret;
}