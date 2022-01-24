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
struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (struct ring_buffer_per_cpu*) ; 
 int FUNC4 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_per_cpu*,int) ; 

bool FUNC6(struct ring_buffer *buffer, int cpu)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	unsigned long flags;
	bool dolock;
	int ret;

	if (!FUNC0(cpu, buffer->cpumask))
		return true;

	cpu_buffer = buffer->buffers[cpu];
	FUNC2(flags);
	dolock = FUNC4(cpu_buffer);
	ret = FUNC3(cpu_buffer);
	FUNC5(cpu_buffer, dolock);
	FUNC1(flags);

	return ret;
}