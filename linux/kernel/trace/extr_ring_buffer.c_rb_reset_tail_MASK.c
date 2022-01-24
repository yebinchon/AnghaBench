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
struct ring_buffer_per_cpu {int /*<<< orphan*/  entries_bytes; } ;
struct ring_buffer_event {int time_delta; int /*<<< orphan*/  type_len; scalar_t__* array; } ;
struct rb_event_info {unsigned long length; struct buffer_page* tail_page; } ;
struct buffer_page {unsigned long real_end; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 unsigned long BUF_PAGE_SIZE ; 
 scalar_t__ RB_EVNT_HDR_SIZE ; 
 unsigned long RB_EVNT_MIN_SIZE ; 
 int /*<<< orphan*/  RINGBUF_TYPE_PADDING ; 
 struct ring_buffer_event* FUNC0 (struct buffer_page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer_event*) ; 

__attribute__((used)) static inline void
FUNC4(struct ring_buffer_per_cpu *cpu_buffer,
	      unsigned long tail, struct rb_event_info *info)
{
	struct buffer_page *tail_page = info->tail_page;
	struct ring_buffer_event *event;
	unsigned long length = info->length;

	/*
	 * Only the event that crossed the page boundary
	 * must fill the old tail_page with padding.
	 */
	if (tail >= BUF_PAGE_SIZE) {
		/*
		 * If the page was filled, then we still need
		 * to update the real_end. Reset it to zero
		 * and the reader will ignore it.
		 */
		if (tail == BUF_PAGE_SIZE)
			tail_page->real_end = 0;

		FUNC2(length, &tail_page->write);
		return;
	}

	event = FUNC0(tail_page, tail);

	/* account for padding bytes */
	FUNC1(BUF_PAGE_SIZE - tail, &cpu_buffer->entries_bytes);

	/*
	 * Save the original length to the meta data.
	 * This will be used by the reader to add lost event
	 * counter.
	 */
	tail_page->real_end = tail;

	/*
	 * If this event is bigger than the minimum size, then
	 * we need to be careful that we don't subtract the
	 * write counter enough to allow another writer to slip
	 * in on this page.
	 * We put in a discarded commit instead, to make sure
	 * that this space is not used again.
	 *
	 * If we are less than the minimum size, we don't need to
	 * worry about it.
	 */
	if (tail > (BUF_PAGE_SIZE - RB_EVNT_MIN_SIZE)) {
		/* No room for any events */

		/* Mark the rest of the page with padding */
		FUNC3(event);

		/* Set the write back to the previous setting */
		FUNC2(length, &tail_page->write);
		return;
	}

	/* Put in a discarded event */
	event->array[0] = (BUF_PAGE_SIZE - tail) - RB_EVNT_HDR_SIZE;
	event->type_len = RINGBUF_TYPE_PADDING;
	/* time delta must be non zero */
	event->time_delta = 1;

	/* Set write to end of buffer */
	length = (tail + length) - BUF_PAGE_SIZE;
	FUNC2(length, &tail_page->write);
}