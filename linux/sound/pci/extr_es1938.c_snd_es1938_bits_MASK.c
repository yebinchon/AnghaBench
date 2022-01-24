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
struct es1938 {int /*<<< orphan*/  reg_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char ESS_CMD_READREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char,unsigned char) ; 
 unsigned char FUNC1 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1938*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct es1938 *chip, unsigned char reg, unsigned char mask,
			   unsigned char val)
{
	unsigned long flags;
	unsigned char old, new, oval;
	FUNC3(&chip->reg_lock, flags);
	FUNC2(chip, ESS_CMD_READREG);
	FUNC2(chip, reg);
	old = FUNC1(chip);
	oval = old & mask;
	if (val != oval) {
		FUNC2(chip, reg);
		new = (old & ~mask) | (val & mask);
		FUNC2(chip, new);
		FUNC0(chip->card->dev, "Reg %02x was %02x, set to %02x\n",
			   reg, old, new);
	}
	FUNC4(&chip->reg_lock, flags);
	return oval;
}