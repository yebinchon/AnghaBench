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
struct trace_array {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STACK_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,struct ring_buffer*,unsigned long,int /*<<< orphan*/ ,int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer*,unsigned long,int) ; 

void FUNC3(struct trace_array *tr,
				     struct ring_buffer *buffer,
				     struct ring_buffer_event *event,
				     unsigned long flags, int pc,
				     struct pt_regs *regs)
{
	FUNC0(buffer, event);

	/*
	 * If regs is not set, then skip the necessary functions.
	 * Note, we can still get here via blktrace, wakeup tracer
	 * and mmiotrace, but that's ok if they lose a function or
	 * two. They are not that meaningful.
	 */
	FUNC1(tr, buffer, flags, regs ? 0 : STACK_SKIP, pc, regs);
	FUNC2(buffer, flags, pc);
}