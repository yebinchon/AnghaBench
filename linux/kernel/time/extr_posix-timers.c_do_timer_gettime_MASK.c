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
typedef  int /*<<< orphan*/  timer_t ;
struct k_itimer {struct k_clock* kclock; } ;
struct k_clock {int /*<<< orphan*/  (* timer_get ) (struct k_itimer*,struct itimerspec64*) ;} ;
struct itimerspec64 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct k_itimer* FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct itimerspec64*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct k_itimer*,struct itimerspec64*) ; 
 int /*<<< orphan*/  FUNC4 (struct k_itimer*,unsigned long) ; 

__attribute__((used)) static int FUNC5(timer_t timer_id,  struct itimerspec64 *setting)
{
	struct k_itimer *timr;
	const struct k_clock *kc;
	unsigned long flags;
	int ret = 0;

	timr = FUNC1(timer_id, &flags);
	if (!timr)
		return -EINVAL;

	FUNC2(setting, 0, sizeof(*setting));
	kc = timr->kclock;
	if (FUNC0(!kc || !kc->timer_get))
		ret = -EINVAL;
	else
		kc->timer_get(timr, setting);

	FUNC4(timr, flags);
	return ret;
}