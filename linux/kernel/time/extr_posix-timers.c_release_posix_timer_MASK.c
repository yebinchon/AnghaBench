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
struct k_itimer {int /*<<< orphan*/  rcu; int /*<<< orphan*/  sigq; int /*<<< orphan*/  it_pid; int /*<<< orphan*/  t_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hash_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  k_itimer_rcu_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct k_itimer *tmr, int it_id_set)
{
	if (it_id_set) {
		unsigned long flags;
		FUNC4(&hash_lock, flags);
		FUNC1(&tmr->t_hash);
		FUNC5(&hash_lock, flags);
	}
	FUNC2(tmr->it_pid);
	FUNC3(tmr->sigq);
	FUNC0(&tmr->rcu, k_itimer_rcu_free);
}