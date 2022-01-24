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
struct snd_mpu401 {int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  timer_invoked; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_MODE_INPUT_TIMER ; 
 int /*<<< orphan*/  MPU401_MODE_OUTPUT_TIMER ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  snd_mpu401_uart_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (struct snd_mpu401 *mpu, int input)
{
	unsigned long flags;

	FUNC1 (&mpu->timer_lock, flags);
	if (mpu->timer_invoked == 0) {
		FUNC3(&mpu->timer, snd_mpu401_uart_timer, 0);
		FUNC0(&mpu->timer, 1 + jiffies);
	} 
	mpu->timer_invoked |= input ? MPU401_MODE_INPUT_TIMER :
		MPU401_MODE_OUTPUT_TIMER;
	FUNC2 (&mpu->timer_lock, flags);
}