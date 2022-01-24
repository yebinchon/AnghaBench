#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct es1938 {TYPE_1__* card; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char ESS_CMD_READREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 unsigned char FUNC1 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1938*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC5(struct es1938 *chip, unsigned char reg)
{
	unsigned char val;
	unsigned long flags;
	FUNC3(&chip->reg_lock, flags);
	FUNC2(chip, ESS_CMD_READREG);
	FUNC2(chip, reg);
	val = FUNC1(chip);
	FUNC4(&chip->reg_lock, flags);
	FUNC0(chip->card->dev, "Reg %02x now is %02x\n", reg, val);
	return val;
}