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
struct ring_buffer_per_cpu {int /*<<< orphan*/  lock; int /*<<< orphan*/ * free_page; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;
struct page {int dummy; } ;
typedef  void buffer_data_page ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 int __GFP_NORETRY ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 void* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

void *FUNC10(struct ring_buffer *buffer, int cpu)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct buffer_data_page *bpage = NULL;
	unsigned long flags;
	struct page *page;

	if (!FUNC5(cpu, buffer->cpumask))
		return FUNC0(-ENODEV);

	cpu_buffer = buffer->buffers[cpu];
	FUNC7(flags);
	FUNC2(&cpu_buffer->lock);

	if (cpu_buffer->free_page) {
		bpage = cpu_buffer->free_page;
		cpu_buffer->free_page = NULL;
	}

	FUNC3(&cpu_buffer->lock);
	FUNC6(flags);

	if (bpage)
		goto out;

	page = FUNC1(FUNC4(cpu),
				GFP_KERNEL | __GFP_NORETRY, 0);
	if (!page)
		return FUNC0(-ENOMEM);

	bpage = FUNC8(page);

 out:
	FUNC9(bpage);

	return bpage;
}