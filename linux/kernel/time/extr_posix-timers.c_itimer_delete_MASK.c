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
struct k_itimer {int /*<<< orphan*/  it_lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IT_ID_SET ; 
 scalar_t__ TIMER_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct k_itimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct k_itimer*) ; 

__attribute__((used)) static void FUNC5(struct k_itimer *timer)
{
retry_delete:
	FUNC2(&timer->it_lock);

	if (FUNC4(timer) == TIMER_RETRY) {
		FUNC3(&timer->it_lock);
		goto retry_delete;
	}
	FUNC0(&timer->list);

	FUNC3(&timer->it_lock);
	FUNC1(timer, IT_ID_SET);
}