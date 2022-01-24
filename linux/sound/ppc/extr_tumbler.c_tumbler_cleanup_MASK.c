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
struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct pmac_tumbler {scalar_t__ headphone_irq; scalar_t__ lineout_irq; int /*<<< orphan*/  i2c; int /*<<< orphan*/  hp_detect; int /*<<< orphan*/  hp_mute; int /*<<< orphan*/  amp_mute; int /*<<< orphan*/  audio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmac_tumbler*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_pmac *chip)
{
	struct pmac_tumbler *mix = chip->mixer_data;
	if (! mix)
		return;

	if (mix->headphone_irq >= 0)
		FUNC0(mix->headphone_irq, chip);
	if (mix->lineout_irq >= 0)
		FUNC0(mix->lineout_irq, chip);
	FUNC3(&mix->audio_reset);
	FUNC3(&mix->amp_mute);
	FUNC3(&mix->hp_mute);
	FUNC3(&mix->hp_detect);
	FUNC2(&mix->i2c);
	FUNC1(mix);
	chip->mixer_data = NULL;
}