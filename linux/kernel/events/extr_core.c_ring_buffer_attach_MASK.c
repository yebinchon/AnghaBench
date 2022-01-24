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
struct ring_buffer {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; } ;
struct perf_event {int rcu_pending; int /*<<< orphan*/  waitq; struct ring_buffer* rb; int /*<<< orphan*/  rb_entry; int /*<<< orphan*/  rcu_batches; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer*,struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct perf_event *event,
			       struct ring_buffer *rb)
{
	struct ring_buffer *old_rb = NULL;
	unsigned long flags;

	if (event->rb) {
		/*
		 * Should be impossible, we set this when removing
		 * event->rb_entry and wait/clear when adding event->rb_entry.
		 */
		FUNC0(event->rcu_pending);

		old_rb = event->rb;
		FUNC9(&old_rb->event_lock, flags);
		FUNC5(&event->rb_entry);
		FUNC10(&old_rb->event_lock, flags);

		event->rcu_batches = FUNC2();
		event->rcu_pending = 1;
	}

	if (rb) {
		if (event->rcu_pending) {
			FUNC1(event->rcu_batches);
			event->rcu_pending = 0;
		}

		FUNC9(&rb->event_lock, flags);
		FUNC4(&event->rb_entry, &rb->event_list);
		FUNC10(&rb->event_lock, flags);
	}

	/*
	 * Avoid racing with perf_mmap_close(AUX): stop the event
	 * before swizzling the event::rb pointer; if it's getting
	 * unmapped, its aux_mmap_count will be 0 and it won't
	 * restart. See the comment in __perf_pmu_output_stop().
	 *
	 * Data will inevitably be lost when set_output is done in
	 * mid-air, but then again, whoever does it like this is
	 * not in for the data anyway.
	 */
	if (FUNC3(event))
		FUNC6(event, 0);

	FUNC7(event->rb, rb);

	if (old_rb) {
		FUNC8(old_rb);
		/*
		 * Since we detached before setting the new rb, so that we
		 * could attach the new rb, we could have missed a wakeup.
		 * Provide it now.
		 */
		FUNC11(&event->waitq);
	}
}