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
struct seq_file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 void* FUNC0 (struct seq_file*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disable_stack_tracer ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stack_trace_max_lock ; 

__attribute__((used)) static void *FUNC4(struct seq_file *m, loff_t *pos)
{
	FUNC3();

	FUNC1(disable_stack_tracer);

	FUNC2(&stack_trace_max_lock);

	if (*pos == 0)
		return SEQ_START_TOKEN;

	return FUNC0(m, pos);
}