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
struct snd_gus_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_GB_RESET ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_SOUND_BLASTER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_gus_card*) ; 

int FUNC5(struct snd_gus_card * gus)
{
	FUNC0(gus, SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, 0); /* stop all timers */
	FUNC3(gus, 0, 31);		/* stop all voices */
	FUNC0(gus, SNDRV_GF1_GB_RESET, 1);	/* disable IRQ & DAC */
	FUNC4(gus);
	FUNC2(gus);
#if 0
	snd_gf1_lfo_done(gus);
#endif
	return 0;
}