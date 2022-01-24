#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * data; int /*<<< orphan*/ * in; } ;
struct perf_top {TYPE_1__ qe; } ;

/* Variables and functions */
 int /*<<< orphan*/  deliver_event ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct perf_top*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_top *top)
{
	FUNC0(&top->qe.data[0], deliver_event, top);
	FUNC0(&top->qe.data[1], deliver_event, top);
	FUNC1(&top->qe.data[0], true);
	FUNC1(&top->qe.data[1], true);
	top->qe.in = &top->qe.data[0];
	FUNC3(&top->qe.mutex, NULL);
	FUNC2(&top->qe.cond, NULL);
}