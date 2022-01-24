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
typedef  int /*<<< orphan*/  u64 ;
struct thread {int comm_set; int /*<<< orphan*/  mg; int /*<<< orphan*/  comm_list; } ;
struct comm {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct comm* FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct comm*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct comm* FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct thread *thread, const char *str,
				u64 timestamp, bool exec)
{
	struct comm *new, *curr = FUNC3(thread);

	/* Override the default :tid entry */
	if (!thread->comm_set) {
		int err = FUNC1(curr, str, timestamp, exec);
		if (err)
			return err;
	} else {
		new = FUNC0(str, timestamp, exec);
		if (!new)
			return -ENOMEM;
		FUNC2(&new->list, &thread->comm_list);

		if (exec)
			FUNC4(thread->mg);
	}

	thread->comm_set = true;

	return 0;
}