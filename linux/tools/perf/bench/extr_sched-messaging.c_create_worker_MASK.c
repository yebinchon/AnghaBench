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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  PTHREAD_STACK_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  thread_mode ; 

__attribute__((used)) static pthread_t FUNC7(void *ctx, void *(*func)(void *))
{
	pthread_attr_t attr;
	pthread_t childid;
	int ret;

	if (!thread_mode) {
		/* process mode */
		/* Fork the receiver. */
		switch (FUNC2()) {
		case -1:
			FUNC0(EXIT_FAILURE, "fork()");
			break;
		case 0:
			(*func) (ctx);
			FUNC1(0);
			break;
		default:
			break;
		}

		return (pthread_t)0;
	}

	if (FUNC3(&attr) != 0)
		FUNC0(EXIT_FAILURE, "pthread_attr_init:");

#ifndef __ia64__
	if (FUNC4(&attr, PTHREAD_STACK_MIN) != 0)
		FUNC0(EXIT_FAILURE, "pthread_attr_setstacksize");
#endif

	ret = FUNC5(&childid, &attr, func, ctx);
	if (ret != 0)
		FUNC0(EXIT_FAILURE, "pthread_create failed");

	return childid;
}