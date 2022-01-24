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
struct user_struct {int /*<<< orphan*/  locked_vm; } ;
struct mmpin {unsigned long num_pg; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int ENOBUFS ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct user_struct* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct user_struct*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct mmpin *mmp, size_t size)
{
	unsigned long max_pg, num_pg, new_pg, old_pg;
	struct user_struct *user;

	if (FUNC2(CAP_IPC_LOCK) || !size)
		return 0;

	num_pg = (size >> PAGE_SHIFT) + 2;	/* worst case */
	max_pg = FUNC5(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
	user = mmp->user ? : FUNC3();

	do {
		old_pg = FUNC1(&user->locked_vm);
		new_pg = old_pg + num_pg;
		if (new_pg > max_pg)
			return -ENOBUFS;
	} while (FUNC0(&user->locked_vm, old_pg, new_pg) !=
		 old_pg);

	if (!mmp->user) {
		mmp->user = FUNC4(user);
		mmp->num_pg = num_pg;
	} else {
		mmp->num_pg += num_pg;
	}

	return 0;
}