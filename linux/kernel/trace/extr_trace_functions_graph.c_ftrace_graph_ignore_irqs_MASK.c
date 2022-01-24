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

/* Variables and functions */
 int /*<<< orphan*/  TRACE_IRQ_BIT ; 
 int /*<<< orphan*/  ftrace_graph_skip_irqs ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(void)
{
	if (!ftrace_graph_skip_irqs || FUNC1(TRACE_IRQ_BIT))
		return 0;

	return FUNC0();
}