#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ buffer; } ;
struct TYPE_4__ {TYPE_1__ trace_buffer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int buffers_allocated ; 
 TYPE_2__ global_trace ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	if (buffers_allocated)
		return;

	if (FUNC0())
		return;

	/* trace_printk() is for debug use only. Don't use it in production. */

	FUNC1("\n");
	FUNC1("**********************************************************\n");
	FUNC1("**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\n");
	FUNC1("**                                                      **\n");
	FUNC1("** trace_printk() being used. Allocating extra memory.  **\n");
	FUNC1("**                                                      **\n");
	FUNC1("** This means that this is a DEBUG kernel and it is     **\n");
	FUNC1("** unsafe for production use.                           **\n");
	FUNC1("**                                                      **\n");
	FUNC1("** If you see this message and you are not debugging    **\n");
	FUNC1("** the kernel, report this immediately to your vendor!  **\n");
	FUNC1("**                                                      **\n");
	FUNC1("**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\n");
	FUNC1("**********************************************************\n");

	/* Expand the buffers to set size */
	FUNC3();

	buffers_allocated = 1;

	/*
	 * trace_printk_init_buffers() can be called by modules.
	 * If that happens, then we need to start cmdline recording
	 * directly here. If the global_trace.buffer is already
	 * allocated here, then this was called by module code.
	 */
	if (global_trace.trace_buffer.buffer)
		FUNC2();
}