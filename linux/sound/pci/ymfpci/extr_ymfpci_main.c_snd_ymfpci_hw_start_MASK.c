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
struct snd_ymfpci {int active_bank; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  start_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_CTRLSELECT ; 
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int FUNC0 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_ymfpci *chip)
{
	unsigned long flags;

	FUNC2(&chip->reg_lock, flags);
	if (chip->start_count++ > 0)
		goto __end;
	FUNC1(chip, YDSXGR_MODE,
			  FUNC0(chip, YDSXGR_MODE) | 3);
	chip->active_bank = FUNC0(chip, YDSXGR_CTRLSELECT) & 1;
      __end:
      	FUNC3(&chip->reg_lock, flags);
}