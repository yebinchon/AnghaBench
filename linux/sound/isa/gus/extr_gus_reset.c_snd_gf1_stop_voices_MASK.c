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
struct TYPE_2__ {scalar_t__ enh_mode; } ;
struct snd_gus_card {int /*<<< orphan*/  reg_lock; TYPE_1__ gf1; } ;

/* Variables and functions */
 unsigned short SNDRV_GF1_MIN_OFFSET ; 
 int /*<<< orphan*/  SNDRV_GF1_VB_VOLUME_CONTROL ; 
 int /*<<< orphan*/  SNDRV_GF1_VB_VOLUME_END ; 
 int /*<<< orphan*/  SNDRV_GF1_VB_VOLUME_RATE ; 
 int /*<<< orphan*/  SNDRV_GF1_VB_VOLUME_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*) ; 
 int FUNC4 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_gus_card*,short) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct snd_gus_card * gus, unsigned short v_min, unsigned short v_max)
{
	unsigned long flags;
	short i, ramp_ok;
	unsigned short ramp_end;

	if (!FUNC0()) {	/* this can't be done in interrupt */
		for (i = v_min, ramp_ok = 0; i <= v_max; i++) {
			FUNC7(&gus->reg_lock, flags);
			FUNC5(gus, i);
			ramp_end = FUNC4(gus, 9) >> 8;
			if (ramp_end > SNDRV_GF1_MIN_OFFSET) {
				ramp_ok++;
				FUNC6(gus, SNDRV_GF1_VB_VOLUME_RATE, 20);	/* ramp rate */
				FUNC6(gus, SNDRV_GF1_VB_VOLUME_START, SNDRV_GF1_MIN_OFFSET);	/* ramp start */
				FUNC6(gus, SNDRV_GF1_VB_VOLUME_END, ramp_end);	/* ramp end */
				FUNC6(gus, SNDRV_GF1_VB_VOLUME_CONTROL, 0x40);	/* ramp down */
				if (gus->gf1.enh_mode) {
					FUNC3(gus);
					FUNC6(gus, SNDRV_GF1_VB_VOLUME_CONTROL, 0x40);
				}
			}
			FUNC8(&gus->reg_lock, flags);
		}
		FUNC1(50);
	}
	FUNC2(gus, v_min, v_max);
}