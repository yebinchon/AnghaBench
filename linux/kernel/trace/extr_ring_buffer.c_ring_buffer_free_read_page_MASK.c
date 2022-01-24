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
struct ring_buffer_per_cpu {int /*<<< orphan*/  lock; struct buffer_data_page* free_page; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; } ;
struct page {int dummy; } ;
struct buffer_data_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct buffer_data_page*) ; 

void FUNC7(struct ring_buffer *buffer, int cpu, void *data)
{
	struct ring_buffer_per_cpu *cpu_buffer = buffer->buffers[cpu];
	struct buffer_data_page *bpage = data;
	struct page *page = FUNC6(bpage);
	unsigned long flags;

	/* If the page is still in use someplace else, we can't reuse it */
	if (FUNC5(page) > 1)
		goto out;

	FUNC4(flags);
	FUNC0(&cpu_buffer->lock);

	if (!cpu_buffer->free_page) {
		cpu_buffer->free_page = bpage;
		bpage = NULL;
	}

	FUNC1(&cpu_buffer->lock);
	FUNC3(flags);

 out:
	FUNC2((unsigned long)bpage);
}