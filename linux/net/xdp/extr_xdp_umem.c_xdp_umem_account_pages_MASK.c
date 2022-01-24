#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {unsigned long npgs; TYPE_1__* user; } ;
struct TYPE_3__ {int /*<<< orphan*/  locked_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int ENOBUFS ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct xdp_umem *umem)
{
	unsigned long lock_limit, new_npgs, old_npgs;

	if (FUNC2(CAP_IPC_LOCK))
		return 0;

	lock_limit = FUNC6(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
	umem->user = FUNC5(FUNC3());

	do {
		old_npgs = FUNC1(&umem->user->locked_vm);
		new_npgs = old_npgs + umem->npgs;
		if (new_npgs > lock_limit) {
			FUNC4(umem->user);
			umem->user = NULL;
			return -ENOBUFS;
		}
	} while (FUNC0(&umem->user->locked_vm, old_npgs,
				     new_npgs) != old_npgs);
	return 0;
}