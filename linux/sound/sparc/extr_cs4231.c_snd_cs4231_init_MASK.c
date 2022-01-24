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
struct snd_cs4231 {int* image; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t CS4231_ALT_FEATURE_1 ; 
 size_t CS4231_ALT_FEATURE_2 ; 
 int CS4231_AUTOCALIB ; 
 int CS4231_CALIB_MODE ; 
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_PLAYBACK_ENABLE ; 
 int CS4231_PLAYBACK_PIO ; 
 size_t CS4231_PLAYBK_FORMAT ; 
 int CS4231_RECORD_ENABLE ; 
 int CS4231_RECORD_PIO ; 
 size_t CS4231_REC_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs4231*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct snd_cs4231 *chip)
{
	unsigned long flags;

	FUNC0(chip);

#ifdef SNDRV_DEBUG_MCE
	snd_printdd("init: (1)\n");
#endif
	FUNC1(chip);
	FUNC4(&chip->lock, flags);
	chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_PLAYBACK_ENABLE |
					    CS4231_PLAYBACK_PIO |
					    CS4231_RECORD_ENABLE |
					    CS4231_RECORD_PIO |
					    CS4231_CALIB_MODE);
	chip->image[CS4231_IFACE_CTRL] |= CS4231_AUTOCALIB;
	FUNC2(chip, CS4231_IFACE_CTRL, chip->image[CS4231_IFACE_CTRL]);
	FUNC5(&chip->lock, flags);
	FUNC0(chip);

#ifdef SNDRV_DEBUG_MCE
	snd_printdd("init: (2)\n");
#endif

	FUNC1(chip);
	FUNC4(&chip->lock, flags);
	FUNC2(chip, CS4231_ALT_FEATURE_1,
			chip->image[CS4231_ALT_FEATURE_1]);
	FUNC5(&chip->lock, flags);
	FUNC0(chip);

#ifdef SNDRV_DEBUG_MCE
	snd_printdd("init: (3) - afei = 0x%x\n",
		    chip->image[CS4231_ALT_FEATURE_1]);
#endif

	FUNC4(&chip->lock, flags);
	FUNC2(chip, CS4231_ALT_FEATURE_2,
			chip->image[CS4231_ALT_FEATURE_2]);
	FUNC5(&chip->lock, flags);

	FUNC1(chip);
	FUNC4(&chip->lock, flags);
	FUNC2(chip, CS4231_PLAYBK_FORMAT,
			chip->image[CS4231_PLAYBK_FORMAT]);
	FUNC5(&chip->lock, flags);
	FUNC0(chip);

#ifdef SNDRV_DEBUG_MCE
	snd_printdd("init: (4)\n");
#endif

	FUNC1(chip);
	FUNC4(&chip->lock, flags);
	FUNC2(chip, CS4231_REC_FORMAT, chip->image[CS4231_REC_FORMAT]);
	FUNC5(&chip->lock, flags);
	FUNC0(chip);

#ifdef SNDRV_DEBUG_MCE
	snd_printdd("init: (5)\n");
#endif
}