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
struct thread {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;
struct perf_session {TYPE_1__ machines; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct perf_session *session)
{
	struct thread *thread;
	int err = 0;

	thread = FUNC0(&session->machines.host, 0, 0);
	if (thread == NULL || FUNC3(thread, "swapper", 0)) {
		FUNC1("problem inserting idle task.\n");
		err = -1;
	}

	if (thread == NULL || FUNC4(thread, 0, NULL)) {
		FUNC1("problem inserting idle task.\n");
		err = -1;
	}

	/* machine__findnew_thread() got the thread, so put it */
	FUNC2(thread);
	return err;
}