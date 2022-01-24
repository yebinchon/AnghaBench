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
struct timer_list {int dummy; } ;
struct snd_mpu401 {scalar_t__ rmidi; int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mpu401*) ; 
 struct snd_mpu401* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct snd_mpu401* mpu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct snd_mpu401 *mpu = FUNC1(mpu, t, timer);
	unsigned long flags;

	FUNC3(&mpu->timer_lock, flags);
	/*mpu->mode |= MPU401_MODE_TIMER;*/
	FUNC2(&mpu->timer,  1 + jiffies);
	FUNC4(&mpu->timer_lock, flags);
	if (mpu->rmidi)
		FUNC0(mpu);
}