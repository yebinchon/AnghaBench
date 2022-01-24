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
struct ring_buffer {int nr_pages; void* user_page; void** data_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_ORDER ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer*) ; 
 struct ring_buffer* FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer*,long,int) ; 

struct ring_buffer *FUNC6(int nr_pages, long watermark, int cpu, int flags)
{
	struct ring_buffer *rb;
	unsigned long size;
	int i;

	size = sizeof(struct ring_buffer);
	size += nr_pages * sizeof(void *);

	if (FUNC3(size) >= PAGE_SHIFT+MAX_ORDER)
		goto fail;

	rb = FUNC2(size, GFP_KERNEL);
	if (!rb)
		goto fail;

	rb->user_page = FUNC4(cpu);
	if (!rb->user_page)
		goto fail_user_page;

	for (i = 0; i < nr_pages; i++) {
		rb->data_pages[i] = FUNC4(cpu);
		if (!rb->data_pages[i])
			goto fail_data_pages;
	}

	rb->nr_pages = nr_pages;

	FUNC5(rb, watermark, flags);

	return rb;

fail_data_pages:
	for (i--; i >= 0; i--)
		FUNC0((unsigned long)rb->data_pages[i]);

	FUNC0((unsigned long)rb->user_page);

fail_user_page:
	FUNC1(rb);

fail:
	return NULL;
}