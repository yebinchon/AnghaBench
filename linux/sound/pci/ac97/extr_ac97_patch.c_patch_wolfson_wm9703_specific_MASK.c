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
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_WM97XX_FMIXER_VOL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wm97xx_snd_ac97_controls ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 * ac97)
{
	/* This is known to work for the ViewSonic ViewPad 1000
	 * Randolph Bentson <bentson@holmsjoen.com>
	 * WM9703/9707/9708/9717 
	 */
	int err, i;
	
	for (i = 0; i < FUNC0(wm97xx_snd_ac97_controls); i++) {
		if ((err = FUNC3(ac97->bus->card, FUNC1(&wm97xx_snd_ac97_controls[i], ac97))) < 0)
			return err;
	}
	FUNC2(ac97,  AC97_WM97XX_FMIXER_VOL, 0x0808);
	return 0;
}