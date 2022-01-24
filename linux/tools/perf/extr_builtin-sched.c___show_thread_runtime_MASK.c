#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct total_run_stats {TYPE_1__* sched; int /*<<< orphan*/  total_run_time; int /*<<< orphan*/  sched_count; int /*<<< orphan*/  task_count; } ;
struct TYPE_4__ {scalar_t__ n; } ;
struct thread_runtime {scalar_t__ total_run_time; TYPE_2__ run_stats; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {scalar_t__ show_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,struct thread_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,struct thread_runtime*) ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 struct thread_runtime* FUNC3 (struct thread*) ; 

__attribute__((used)) static int FUNC4(struct thread *t, void *priv)
{
	struct total_run_stats *stats = priv;
	struct thread_runtime *r;

	if (FUNC2(t))
		return 0;

	r = FUNC3(t);
	if (r && r->run_stats.n) {
		stats->task_count++;
		stats->sched_count += r->run_stats.n;
		stats->total_run_time += r->total_run_time;

		if (stats->sched->show_state)
			FUNC1(t, r);
		else
			FUNC0(t, r);
	}

	return 0;
}