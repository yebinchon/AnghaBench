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
struct uprobe_cpu_buffer {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uprobe_cpu_buffer* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  uprobe_cpu_buffer ; 

__attribute__((used)) static struct uprobe_cpu_buffer *FUNC3(void)
{
	struct uprobe_cpu_buffer *ucb;
	int cpu;

	cpu = FUNC2();
	ucb = FUNC1(uprobe_cpu_buffer, cpu);

	/*
	 * Use per-cpu buffers for fastest access, but we might migrate
	 * so the mutex makes sure we have sole access to it.
	 */
	FUNC0(&ucb->mutex);

	return ucb;
}