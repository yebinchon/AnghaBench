#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int addr; } ;
struct snd_ymfpci {int /*<<< orphan*/  reg_lock; TYPE_1__*** bank_effect; TYPE_2__ ac3_tmp_base; int /*<<< orphan*/  pci; } ;
struct TYPE_3__ {void* loop_end; void* base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  YDSXGR_MAPOFEFFECT ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_ymfpci *chip)
{
	if (FUNC1(SNDRV_DMA_TYPE_DEV, FUNC2(chip->pci),
				4096, &chip->ac3_tmp_base) < 0)
		return -ENOMEM;

	chip->bank_effect[3][0]->base =
	chip->bank_effect[3][1]->base = FUNC0(chip->ac3_tmp_base.addr);
	chip->bank_effect[3][0]->loop_end =
	chip->bank_effect[3][1]->loop_end = FUNC0(1024);
	chip->bank_effect[4][0]->base =
	chip->bank_effect[4][1]->base = FUNC0(chip->ac3_tmp_base.addr + 2048);
	chip->bank_effect[4][0]->loop_end =
	chip->bank_effect[4][1]->loop_end = FUNC0(1024);

	FUNC5(&chip->reg_lock);
	FUNC4(chip, YDSXGR_MAPOFEFFECT,
			  FUNC3(chip, YDSXGR_MAPOFEFFECT) | 3 << 3);
	FUNC6(&chip->reg_lock);
	return 0;
}