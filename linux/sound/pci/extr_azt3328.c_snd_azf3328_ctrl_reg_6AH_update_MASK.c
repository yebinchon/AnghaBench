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
struct snd_azf3328 {unsigned int shadow_reg_ctrl_6AH; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDX_IO_6AH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_azf3328*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct snd_azf3328 *chip,
					unsigned bitmask,
					bool enable
)
{
	bool do_mask = !enable;
	if (do_mask)
		chip->shadow_reg_ctrl_6AH |= bitmask;
	else
		chip->shadow_reg_ctrl_6AH &= ~bitmask;
	FUNC0(chip->card->dev,
		"6AH_update mask 0x%04x do_mask %d: val 0x%04x\n",
		bitmask, do_mask, chip->shadow_reg_ctrl_6AH);
	FUNC1(chip, IDX_IO_6AH, chip->shadow_reg_ctrl_6AH);
}