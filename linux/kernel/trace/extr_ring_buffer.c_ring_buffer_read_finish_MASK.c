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
struct ring_buffer_per_cpu {TYPE_1__* buffer; int /*<<< orphan*/  record_disabled; int /*<<< orphan*/  reader_lock; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  resize_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_buffer_per_cpu*) ; 

void
FUNC5(struct ring_buffer_iter *iter)
{
	struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;
	unsigned long flags;

	/*
	 * Ring buffer is disabled from recording, here's a good place
	 * to check the integrity of the ring buffer.
	 * Must prevent readers from trying to read, as the check
	 * clears the HEAD page and readers require it.
	 */
	FUNC2(&cpu_buffer->reader_lock, flags);
	FUNC4(cpu_buffer);
	FUNC3(&cpu_buffer->reader_lock, flags);

	FUNC0(&cpu_buffer->record_disabled);
	FUNC0(&cpu_buffer->buffer->resize_disabled);
	FUNC1(iter);
}