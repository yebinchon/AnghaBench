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
struct perf_sched {int /*<<< orphan*/  show_callchain; } ;
struct perf_sample {int /*<<< orphan*/ * callchain; } ;
struct idle_thread_runtime {int /*<<< orphan*/  cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  callchain_cursor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct perf_sched *sched,
				struct idle_thread_runtime *itr,
				struct perf_sample *sample)
{
	if (!sched->show_callchain || sample->callchain == NULL)
		return;

	FUNC0(&itr->cursor, &callchain_cursor);
}