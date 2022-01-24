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
struct trace_array {int /*<<< orphan*/  trace_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long*,unsigned long*) ; 
 struct trace_array global_trace ; 

unsigned long FUNC1(struct trace_array *tr)
{
	unsigned long total, entries;

	if (!tr)
		tr = &global_trace;

	FUNC0(&tr->trace_buffer, &total, &entries);

	return entries;
}