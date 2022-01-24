#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer_per_cpu {unsigned long nr_pages; int /*<<< orphan*/  pages; int /*<<< orphan*/  cpu; } ;
struct TYPE_5__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__ pages ; 
 int /*<<< orphan*/  FUNC4 (struct ring_buffer_per_cpu*) ; 

__attribute__((used)) static int FUNC5(struct ring_buffer_per_cpu *cpu_buffer,
			     unsigned long nr_pages)
{
	FUNC0(pages);

	FUNC1(!nr_pages);

	if (FUNC2(nr_pages, &pages, cpu_buffer->cpu))
		return -ENOMEM;

	/*
	 * The ring buffer page list is a circular list that does not
	 * start and end with a list head. All page list items point to
	 * other pages.
	 */
	cpu_buffer->pages = pages.next;
	FUNC3(&pages);

	cpu_buffer->nr_pages = nr_pages;

	FUNC4(cpu_buffer);

	return 0;
}