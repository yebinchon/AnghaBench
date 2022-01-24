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
struct snd_cs46xx_region {scalar_t__ resource; int /*<<< orphan*/  remap_addr; } ;
struct TYPE_2__ {struct snd_cs46xx_region* idx; } ;
struct snd_cs46xx {int amplifier; scalar_t__ irq; int /*<<< orphan*/  pci; struct snd_cs46xx* saved_regs; int /*<<< orphan*/  ba1; int /*<<< orphan*/ * modules; int /*<<< orphan*/ * dsp_spos_instance; TYPE_1__ region; int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;int /*<<< orphan*/  (* amplifier_ctrl ) (struct snd_cs46xx*,int) ;} ;

/* Variables and functions */
 int CS46XX_DSP_MODULES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct snd_cs46xx *chip)
{
	int idx;

	if (FUNC7(!chip))
		return -EINVAL;

	if (chip->active_ctrl)
		chip->active_ctrl(chip, 1);

	FUNC10(chip);

	if (chip->amplifier_ctrl)
		chip->amplifier_ctrl(chip, -chip->amplifier); /* force to off */
	
	FUNC9(chip);

	if (chip->region.idx[0].resource)
		FUNC8(chip);

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);

	if (chip->active_ctrl)
		chip->active_ctrl(chip, -chip->amplifier);

	for (idx = 0; idx < 5; idx++) {
		struct snd_cs46xx_region *region = &chip->region.idx[idx];

		FUNC3(region->remap_addr);
		FUNC6(region->resource);
	}

#ifdef CONFIG_SND_CS46XX_NEW_DSP
	if (chip->dsp_spos_instance) {
		cs46xx_dsp_spos_destroy(chip);
		chip->dsp_spos_instance = NULL;
	}
	for (idx = 0; idx < CS46XX_DSP_MODULES; idx++)
		free_module_desc(chip->modules[idx]);
#else
	FUNC14(chip->ba1);
#endif
	
#ifdef CONFIG_PM_SLEEP
	kfree(chip->saved_regs);
#endif

	FUNC5(chip->pci);
	FUNC4(chip);
	return 0;
}