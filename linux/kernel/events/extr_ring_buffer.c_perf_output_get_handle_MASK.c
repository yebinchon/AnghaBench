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
struct ring_buffer {int /*<<< orphan*/  wakeup; int /*<<< orphan*/  nest; } ;
struct perf_output_handle {int /*<<< orphan*/  wakeup; struct ring_buffer* rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct perf_output_handle *handle)
{
	struct ring_buffer *rb = handle->rb;

	FUNC1();

	/*
	 * Avoid an explicit LOAD/STORE such that architectures with memops
	 * can use them.
	 */
	(*(volatile unsigned int *)&rb->nest)++;
	handle->wakeup = FUNC0(&rb->wakeup);
}