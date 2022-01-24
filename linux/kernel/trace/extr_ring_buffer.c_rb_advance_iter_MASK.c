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
struct ring_buffer_per_cpu {scalar_t__ commit_page; } ;
struct ring_buffer_iter {scalar_t__ head; scalar_t__ head_page; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ring_buffer_per_cpu*,int) ; 
 scalar_t__ FUNC1 (struct ring_buffer_per_cpu*) ; 
 unsigned int FUNC2 (struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer_iter*) ; 
 struct ring_buffer_event* FUNC4 (struct ring_buffer_iter*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer_iter*,struct ring_buffer_event*) ; 

__attribute__((used)) static void FUNC7(struct ring_buffer_iter *iter)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event;
	unsigned length;

	cpu_buffer = iter->cpu_buffer;

	/*
	 * Check if we are at the end of the buffer.
	 */
	if (iter->head >= FUNC5(iter->head_page)) {
		/* discarded commits can make the page empty */
		if (iter->head_page == cpu_buffer->commit_page)
			return;
		FUNC3(iter);
		return;
	}

	event = FUNC4(iter);

	length = FUNC2(event);

	/*
	 * This should not be called to advance the header if we are
	 * at the tail of the buffer.
	 */
	if (FUNC0(cpu_buffer,
		       (iter->head_page == cpu_buffer->commit_page) &&
		       (iter->head + length > FUNC1(cpu_buffer))))
		return;

	FUNC6(iter, event);

	iter->head += length;

	/* check for end of page padding */
	if ((iter->head >= FUNC5(iter->head_page)) &&
	    (iter->head_page != cpu_buffer->commit_page))
		FUNC3(iter);
}