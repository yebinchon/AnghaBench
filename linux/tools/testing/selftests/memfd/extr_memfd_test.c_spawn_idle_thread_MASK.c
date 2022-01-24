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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 unsigned int SIGCHLD ; 
 int STACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idle_thread_fn ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static pid_t FUNC4(unsigned int flags)
{
	uint8_t *stack;
	pid_t pid;

	stack = FUNC2(STACK_SIZE);
	if (!stack) {
		FUNC3("malloc(STACK_SIZE) failed: %m\n");
		FUNC0();
	}

	pid = FUNC1(idle_thread_fn,
		    stack + STACK_SIZE,
		    SIGCHLD | flags,
		    NULL);
	if (pid < 0) {
		FUNC3("clone() failed: %m\n");
		FUNC0();
	}

	return pid;
}