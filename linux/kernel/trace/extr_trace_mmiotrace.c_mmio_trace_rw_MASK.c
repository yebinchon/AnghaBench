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
struct trace_array_cpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct mmiotrace_rw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct trace_array_cpu*,struct mmiotrace_rw*) ; 
 struct trace_array* mmio_trace_array ; 
 struct trace_array_cpu* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct mmiotrace_rw *rw)
{
	struct trace_array *tr = mmio_trace_array;
	struct trace_array_cpu *data = FUNC1(tr->trace_buffer.data, FUNC2());
	FUNC0(tr, data, rw);
}