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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disable_stack_tracer ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stack_trace_max_lock ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, void *p)
{
	FUNC1(&stack_trace_max_lock);

	FUNC0(disable_stack_tracer);

	FUNC2();
}