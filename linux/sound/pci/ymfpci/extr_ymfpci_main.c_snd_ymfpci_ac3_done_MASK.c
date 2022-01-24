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
struct TYPE_2__ {int /*<<< orphan*/ * area; } ;
struct snd_ymfpci {TYPE_1__ ac3_tmp_base; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_MAPOFEFFECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_ymfpci *chip)
{
	FUNC3(&chip->reg_lock);
	FUNC2(chip, YDSXGR_MAPOFEFFECT,
			  FUNC1(chip, YDSXGR_MAPOFEFFECT) & ~(3 << 3));
	FUNC4(&chip->reg_lock);
	// snd_ymfpci_irq_wait(chip);
	if (chip->ac3_tmp_base.area) {
		FUNC0(&chip->ac3_tmp_base);
		chip->ac3_tmp_base.area = NULL;
	}
	return 0;
}