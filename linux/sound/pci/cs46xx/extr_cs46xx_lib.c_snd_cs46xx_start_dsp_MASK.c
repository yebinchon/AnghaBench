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
struct TYPE_4__ {unsigned int ctl; } ;
struct snd_cs46xx {unsigned int play_ctl; TYPE_2__ capt; TYPE_1__* card; int /*<<< orphan*/ * modules; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA1_CCTL ; 
 int /*<<< orphan*/  BA1_CVOL ; 
 int /*<<< orphan*/  BA1_PCTL ; 
 int /*<<< orphan*/  BA1_PVOL ; 
 int CS46XX_DSP_MODULES ; 
 int EIO ; 
 int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct snd_cs46xx*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * module_names ; 
 int FUNC6 (struct snd_cs46xx*) ; 
 unsigned int FUNC7 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_cs46xx*,int) ; 

int FUNC13(struct snd_cs46xx *chip)
{	
	unsigned int tmp;
#ifdef CONFIG_SND_CS46XX_NEW_DSP
	int i;
#endif
	int err;

	/*
	 *  Reset the processor.
	 */
	FUNC10(chip);
	/*
	 *  Download the image to the processor.
	 */
#ifdef CONFIG_SND_CS46XX_NEW_DSP
	for (i = 0; i < CS46XX_DSP_MODULES; i++) {
		err = load_firmware(chip, &chip->modules[i], module_names[i]);
		if (err < 0) {
			dev_err(chip->card->dev, "firmware load error [%s]\n",
				   module_names[i]);
			return err;
		}
		err = cs46xx_dsp_load_module(chip, chip->modules[i]);
		if (err < 0) {
			dev_err(chip->card->dev, "image download error [%s]\n",
				   module_names[i]);
			return err;
		}
	}

	if (cs46xx_dsp_scb_and_task_init(chip) < 0)
		return -EIO;
#else
	err = FUNC4(chip);
	if (err < 0)
		return err;

	/* old image */
	err = FUNC6(chip);
	if (err < 0) {
		FUNC3(chip->card->dev, "image download error\n");
		return err;
	}

	/*
         *  Stop playback DMA.
	 */
	tmp = FUNC7(chip, BA1_PCTL);
	chip->play_ctl = tmp & 0xffff0000;
	FUNC8(chip, BA1_PCTL, tmp & 0x0000ffff);
#endif

	/*
         *  Stop capture DMA.
	 */
	tmp = FUNC7(chip, BA1_CCTL);
	chip->capt.ctl = tmp & 0x0000ffff;
	FUNC8(chip, BA1_CCTL, tmp & 0xffff0000);

	FUNC5(5);

	FUNC12(chip, 8000);
	FUNC11(chip, 8000);

	FUNC9(chip);

	FUNC2(chip);
	
#ifndef CONFIG_SND_CS46XX_NEW_DSP
	/* set the attenuation to 0dB */ 
	FUNC8(chip, BA1_PVOL, 0x80008000);
	FUNC8(chip, BA1_CVOL, 0x80008000);
#endif

	return 0;
}