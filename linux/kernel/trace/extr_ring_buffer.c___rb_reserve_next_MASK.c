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
struct ring_buffer_per_cpu {int /*<<< orphan*/  entries_bytes; int /*<<< orphan*/  buffer; int /*<<< orphan*/  tail_page; } ;
struct ring_buffer_event {int dummy; } ;
struct rb_event_info {int add_timestamp; unsigned long length; int /*<<< orphan*/  ts; scalar_t__ delta; struct buffer_page* tail_page; } ;
struct buffer_page {TYPE_1__* page; int /*<<< orphan*/  entries; int /*<<< orphan*/  write; } ;
struct TYPE_2__ {int /*<<< orphan*/  time_stamp; } ;

/* Variables and functions */
 unsigned long BUF_PAGE_SIZE ; 
 scalar_t__ RB_LEN_TIME_EXTEND ; 
 unsigned long RB_WRITE_MASK ; 
 struct buffer_page* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ring_buffer_event* FUNC1 (struct buffer_page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ring_buffer_event* FUNC5 (struct ring_buffer_per_cpu*,unsigned long,struct rb_event_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer_per_cpu*,struct ring_buffer_event*,struct rb_event_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct ring_buffer_event *
FUNC9(struct ring_buffer_per_cpu *cpu_buffer,
		  struct rb_event_info *info)
{
	struct ring_buffer_event *event;
	struct buffer_page *tail_page;
	unsigned long tail, write;

	/*
	 * If the time delta since the last event is too big to
	 * hold in the time field of the event, then we append a
	 * TIME EXTEND event ahead of the data event.
	 */
	if (FUNC8(info->add_timestamp))
		info->length += RB_LEN_TIME_EXTEND;

	/* Don't let the compiler play games with cpu_buffer->tail_page */
	tail_page = info->tail_page = FUNC0(cpu_buffer->tail_page);
	write = FUNC3(info->length, &tail_page->write);

	/* set write to only the index of the write */
	write &= RB_WRITE_MASK;
	tail = write - info->length;

	/*
	 * If this is the first commit on the page, then it has the same
	 * timestamp as the page itself.
	 */
	if (!tail && !FUNC7(cpu_buffer->buffer))
		info->delta = 0;

	/* See if we shot pass the end of this buffer page */
	if (FUNC8(write > BUF_PAGE_SIZE))
		return FUNC5(cpu_buffer, tail, info);

	/* We reserved something on the buffer */

	event = FUNC1(tail_page, tail);
	FUNC6(cpu_buffer, event, info);

	FUNC4(&tail_page->entries);

	/*
	 * If this is the first commit on the page, then update
	 * its timestamp.
	 */
	if (!tail)
		tail_page->page->time_stamp = info->ts;

	/* account for these added bytes */
	FUNC2(info->length, &cpu_buffer->entries_bytes);

	return event;
}