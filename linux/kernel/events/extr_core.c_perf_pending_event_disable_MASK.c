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
struct perf_event {int /*<<< orphan*/  pending; int /*<<< orphan*/  pending_disable; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	int cpu = FUNC0(event->pending_disable);

	if (cpu < 0)
		return;

	if (cpu == FUNC4()) {
		FUNC1(event->pending_disable, -1);
		FUNC3(event);
		return;
	}

	/*
	 *  CPU-A			CPU-B
	 *
	 *  perf_event_disable_inatomic()
	 *    @pending_disable = CPU-A;
	 *    irq_work_queue();
	 *
	 *  sched-out
	 *    @pending_disable = -1;
	 *
	 *				sched-in
	 *				perf_event_disable_inatomic()
	 *				  @pending_disable = CPU-B;
	 *				  irq_work_queue(); // FAILS
	 *
	 *  irq_work_run()
	 *    perf_pending_event()
	 *
	 * But the event runs on CPU-B and wants disabling there.
	 */
	FUNC2(&event->pending, cpu);
}