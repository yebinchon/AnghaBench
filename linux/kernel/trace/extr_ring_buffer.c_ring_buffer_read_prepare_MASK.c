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
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer {int /*<<< orphan*/  resize_disabled; struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ring_buffer_iter* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct ring_buffer_iter *
FUNC3(struct ring_buffer *buffer, int cpu, gfp_t flags)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_iter *iter;

	if (!FUNC1(cpu, buffer->cpumask))
		return NULL;

	iter = FUNC2(sizeof(*iter), flags);
	if (!iter)
		return NULL;

	cpu_buffer = buffer->buffers[cpu];

	iter->cpu_buffer = cpu_buffer;

	FUNC0(&buffer->resize_disabled);
	FUNC0(&cpu_buffer->record_disabled);

	return iter;
}