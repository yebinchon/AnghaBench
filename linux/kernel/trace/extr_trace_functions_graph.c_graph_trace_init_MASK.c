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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ tracing_thresh ; 

__attribute__((used)) static int FUNC3(struct trace_array *tr)
{
	int ret;

	FUNC1(tr);
	if (tracing_thresh)
		ret = FUNC0(&funcgraph_thresh_ops);
	else
		ret = FUNC0(&funcgraph_ops);
	if (ret)
		return ret;
	FUNC2();

	return 0;
}