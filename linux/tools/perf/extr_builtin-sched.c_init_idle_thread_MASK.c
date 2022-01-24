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
struct TYPE_2__ {int /*<<< orphan*/  run_stats; } ;
struct idle_thread_runtime {int /*<<< orphan*/  cursor; int /*<<< orphan*/  callchain; TYPE_1__ tr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idle_comm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,struct idle_thread_runtime*) ; 
 struct idle_thread_runtime* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct thread *thread)
{
	struct idle_thread_runtime *itr;

	FUNC3(thread, idle_comm, 0);

	itr = FUNC5(sizeof(*itr));
	if (itr == NULL)
		return -ENOMEM;

	FUNC2(&itr->tr.run_stats);
	FUNC1(&itr->callchain);
	FUNC0(&itr->cursor);
	FUNC4(thread, itr);

	return 0;
}