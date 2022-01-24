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
typedef  scalar_t__ u64 ;
struct ring_buffer_per_cpu {scalar_t__ read; scalar_t__ reader_page; int /*<<< orphan*/  cpu; struct ring_buffer* buffer; } ;
struct ring_buffer_iter {scalar_t__ cache_read; scalar_t__ cache_reader_page; scalar_t__ head; scalar_t__ read_stamp; int /*<<< orphan*/  head_page; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {int type_len; scalar_t__ time_delta; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct ring_buffer_per_cpu*,int) ; 
#define  RINGBUF_TYPE_DATA 131 
#define  RINGBUF_TYPE_PADDING 130 
#define  RINGBUF_TYPE_TIME_EXTEND 129 
#define  RINGBUF_TYPE_TIME_STAMP 128 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer_iter*) ; 
 struct ring_buffer_event* FUNC4 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer_event*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC9 (struct ring_buffer_event*) ; 
 scalar_t__ FUNC10 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ring_buffer*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct ring_buffer_event *
FUNC13(struct ring_buffer_iter *iter, u64 *ts)
{
	struct ring_buffer *buffer;
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event;
	int nr_loops = 0;

	if (ts)
		*ts = 0;

	cpu_buffer = iter->cpu_buffer;
	buffer = cpu_buffer->buffer;

	/*
	 * Check if someone performed a consuming read to
	 * the buffer. A consuming read invalidates the iterator
	 * and we need to reset the iterator in this case.
	 */
	if (FUNC12(iter->cache_read != cpu_buffer->read ||
		     iter->cache_reader_page != cpu_buffer->reader_page))
		FUNC5(iter);

 again:
	if (FUNC10(iter))
		return NULL;

	/*
	 * We repeat when a time extend is encountered or we hit
	 * the end of the page. Since the time extend is always attached
	 * to a data event, we should never loop more than three times.
	 * Once for going to next page, once on time extend, and
	 * finally once to get the event.
	 * (We never hit the following condition more than thrice).
	 */
	if (FUNC1(cpu_buffer, ++nr_loops > 3))
		return NULL;

	if (FUNC8(cpu_buffer))
		return NULL;

	if (iter->head >= FUNC7(iter->head_page)) {
		FUNC3(iter);
		goto again;
	}

	event = FUNC4(iter);

	switch (event->type_len) {
	case RINGBUF_TYPE_PADDING:
		if (FUNC6(event)) {
			FUNC3(iter);
			goto again;
		}
		FUNC2(iter);
		return event;

	case RINGBUF_TYPE_TIME_EXTEND:
		/* Internal data, OK to advance */
		FUNC2(iter);
		goto again;

	case RINGBUF_TYPE_TIME_STAMP:
		if (ts) {
			*ts = FUNC9(event);
			FUNC11(cpu_buffer->buffer,
							 cpu_buffer->cpu, ts);
		}
		/* Internal data, OK to advance */
		FUNC2(iter);
		goto again;

	case RINGBUF_TYPE_DATA:
		if (ts && !(*ts)) {
			*ts = iter->read_stamp + event->time_delta;
			FUNC11(buffer,
							 cpu_buffer->cpu, ts);
		}
		return event;

	default:
		FUNC0();
	}

	return NULL;
}