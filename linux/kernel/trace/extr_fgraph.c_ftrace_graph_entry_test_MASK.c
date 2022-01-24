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
struct ftrace_graph_ent {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int FUNC0 (struct ftrace_graph_ent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_ops ; 

__attribute__((used)) static int FUNC2(struct ftrace_graph_ent *trace)
{
	if (!FUNC1(&global_ops, trace->func, NULL))
		return 0;
	return FUNC0(trace);
}