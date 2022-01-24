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
struct ring_buffer_per_cpu {int /*<<< orphan*/  entries_bytes; int /*<<< orphan*/  tail_page; } ;
struct ring_buffer_event {int dummy; } ;
struct buffer_page {void* page; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long RB_WRITE_MASK ; 
 struct buffer_page* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct ring_buffer_event*) ; 
 unsigned long FUNC5 (struct ring_buffer_event*) ; 
 unsigned long FUNC6 (struct ring_buffer_event*) ; 
 unsigned long FUNC7 (struct buffer_page*) ; 

__attribute__((used)) static inline int
FUNC8(struct ring_buffer_per_cpu *cpu_buffer,
		  struct ring_buffer_event *event)
{
	unsigned long new_index, old_index;
	struct buffer_page *bpage;
	unsigned long index;
	unsigned long addr;

	new_index = FUNC4(event);
	old_index = new_index + FUNC6(event);
	addr = (unsigned long)event;
	addr &= PAGE_MASK;

	bpage = FUNC0(cpu_buffer->tail_page);

	if (bpage->page == (void *)addr && FUNC7(bpage) == old_index) {
		unsigned long write_mask =
			FUNC2(&bpage->write) & ~RB_WRITE_MASK;
		unsigned long event_length = FUNC5(event);
		/*
		 * This is on the tail page. It is possible that
		 * a write could come in and move the tail page
		 * and write to the next page. That is fine
		 * because we just shorten what is on this page.
		 */
		old_index += write_mask;
		new_index += write_mask;
		index = FUNC1(&bpage->write, old_index, new_index);
		if (index == old_index) {
			/* update counters */
			FUNC3(event_length, &cpu_buffer->entries_bytes);
			return 1;
		}
	}

	/* could not discard */
	return 0;
}