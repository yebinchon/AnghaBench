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
 int /*<<< orphan*/  delay_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_buffer_mempool ; 
 int /*<<< orphan*/  rpc_buffer_slabp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_task_mempool ; 
 int /*<<< orphan*/  rpc_task_slabp ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
	FUNC3();
	FUNC1(rpc_buffer_mempool);
	FUNC1(rpc_task_mempool);
	FUNC0(rpc_task_slabp);
	FUNC0(rpc_buffer_slabp);
	FUNC2(&delay_queue);
}