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
struct strparser {scalar_t__ need_bytes; int /*<<< orphan*/  work; int /*<<< orphan*/  sk; scalar_t__ paused; int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct strparser*) ; 
 int /*<<< orphan*/  FUNC3 (struct strparser*) ; 
 int /*<<< orphan*/  strp_wq ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct strparser *strp)
{
	if (FUNC4(strp->stopped) || strp->paused)
		return;

	/* This check is needed to synchronize with do_strp_work.
	 * do_strp_work acquires a process lock (lock_sock) whereas
	 * the lock held here is bh_lock_sock. The two locks can be
	 * held by different threads at the same time, but bh_lock_sock
	 * allows a thread in BH context to safely check if the process
	 * lock is held. In this case, if the lock is held, queue work.
	 */
	if (FUNC1(strp->sk)) {
		FUNC0(strp_wq, &strp->work);
		return;
	}

	if (strp->need_bytes) {
		if (FUNC2(strp) < strp->need_bytes)
			return;
	}

	if (FUNC3(strp) == -ENOMEM)
		FUNC0(strp_wq, &strp->work);
}