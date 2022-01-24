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
struct ring_buffer_per_cpu {int /*<<< orphan*/  record_disabled; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  record_disabled; } ;

/* Variables and functions */
 unsigned long BUF_MAX_DATA_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 struct ring_buffer_event* FUNC5 (struct ring_buffer*,struct ring_buffer_per_cpu*,unsigned long) ; 
 int FUNC6 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC8 (int) ; 

struct ring_buffer_event *
FUNC9(struct ring_buffer *buffer, unsigned long length)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event;
	int cpu;

	/* If we are tracing schedule, we don't want to recurse */
	FUNC2();

	if (FUNC8(FUNC0(&buffer->record_disabled)))
		goto out;

	cpu = FUNC4();

	if (FUNC8(!FUNC1(cpu, buffer->cpumask)))
		goto out;

	cpu_buffer = buffer->buffers[cpu];

	if (FUNC8(FUNC0(&cpu_buffer->record_disabled)))
		goto out;

	if (FUNC8(length > BUF_MAX_DATA_SIZE))
		goto out;

	if (FUNC8(FUNC6(cpu_buffer)))
		goto out;

	event = FUNC5(buffer, cpu_buffer, length);
	if (!event)
		goto out_unlock;

	return event;

 out_unlock:
	FUNC7(cpu_buffer);
 out:
	FUNC3();
	return NULL;
}