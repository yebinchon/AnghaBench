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
 int /*<<< orphan*/  funcgraph_ops ; 
 int /*<<< orphan*/  funcgraph_thresh_ops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ tracing_thresh ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct trace_array *tr)
{
	FUNC0();
	if (tracing_thresh)
		FUNC1(&funcgraph_thresh_ops);
	else
		FUNC1(&funcgraph_ops);
}