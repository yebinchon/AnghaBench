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
struct trace_buffer_struct {int nesting; char** buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct trace_buffer_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_percpu_buffer ; 

__attribute__((used)) static char *FUNC2(void)
{
	struct trace_buffer_struct *buffer = FUNC1(trace_percpu_buffer);

	if (!buffer || buffer->nesting >= 4)
		return NULL;

	buffer->nesting++;

	/* Interrupts must see nesting incremented before we use the buffer */
	FUNC0();
	return &buffer->buffer[buffer->nesting][0];
}