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
struct snd_bt87x {int reg_control; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int CTL_ACAP_EN ; 
 int CTL_FIFO_ENABLE ; 
 int CTL_RISC_ENABLE ; 
 int MY_INTERRUPTS ; 
 int /*<<< orphan*/  REG_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  REG_INT_MASK ; 
 int /*<<< orphan*/  REG_INT_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_bt87x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_bt87x *chip)
{
	FUNC1(&chip->reg_lock);
	chip->reg_control &= ~(CTL_FIFO_ENABLE | CTL_RISC_ENABLE | CTL_ACAP_EN);
	FUNC0(chip, REG_GPIO_DMA_CTL, chip->reg_control);
	FUNC0(chip, REG_INT_MASK, 0);
	FUNC0(chip, REG_INT_STAT, MY_INTERRUPTS);
	FUNC2(&chip->reg_lock);
	return 0;
}