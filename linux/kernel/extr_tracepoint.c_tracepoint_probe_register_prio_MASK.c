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
struct tracepoint_func {int prio; void* data; void* func; } ;
struct tracepoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tracepoint*,struct tracepoint_func*,int) ; 
 int /*<<< orphan*/  tracepoints_mutex ; 

int FUNC3(struct tracepoint *tp, void *probe,
				   void *data, int prio)
{
	struct tracepoint_func tp_func;
	int ret;

	FUNC0(&tracepoints_mutex);
	tp_func.func = probe;
	tp_func.data = data;
	tp_func.prio = prio;
	ret = FUNC2(tp, &tp_func, prio);
	FUNC1(&tracepoints_mutex);
	return ret;
}