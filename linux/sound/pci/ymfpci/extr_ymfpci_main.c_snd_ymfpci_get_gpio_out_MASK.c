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
typedef  int u16 ;
struct snd_ymfpci {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_GPIOFUNCENABLE ; 
 int /*<<< orphan*/  YDSXGR_GPIOINSTATUS ; 
 int /*<<< orphan*/  YDSXGR_GPIOTYPECONFIG ; 
 int FUNC0 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_ymfpci *chip, int pin)
{
	u16 reg, mode;
	unsigned long flags;

	FUNC2(&chip->reg_lock, flags);
	reg = FUNC0(chip, YDSXGR_GPIOFUNCENABLE);
	reg &= ~(1 << (pin + 8));
	reg |= (1 << pin);
	FUNC1(chip, YDSXGR_GPIOFUNCENABLE, reg);
	/* set the level mode for input line */
	mode = FUNC0(chip, YDSXGR_GPIOTYPECONFIG);
	mode &= ~(3 << (pin * 2));
	FUNC1(chip, YDSXGR_GPIOTYPECONFIG, mode);
	FUNC1(chip, YDSXGR_GPIOFUNCENABLE, reg | (1 << (pin + 8)));
	mode = FUNC0(chip, YDSXGR_GPIOINSTATUS);
	FUNC3(&chip->reg_lock, flags);
	return (mode >> pin) & 1;
}