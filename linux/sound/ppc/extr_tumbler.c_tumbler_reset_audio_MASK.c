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
struct pmac_tumbler {int /*<<< orphan*/  audio_reset; int /*<<< orphan*/  amp_mute; int /*<<< orphan*/  hp_mute; scalar_t__ anded_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct snd_pmac *chip)
{
	struct pmac_tumbler *mix = chip->mixer_data;

	if (mix->anded_reset) {
		FUNC0("(I) codec anded reset !\n");
		FUNC2(&mix->hp_mute, 0);
		FUNC2(&mix->amp_mute, 0);
		FUNC1(200);
		FUNC2(&mix->hp_mute, 1);
		FUNC2(&mix->amp_mute, 1);
		FUNC1(100);
		FUNC2(&mix->hp_mute, 0);
		FUNC2(&mix->amp_mute, 0);
		FUNC1(100);
	} else {
		FUNC0("(I) codec normal reset !\n");

		FUNC2(&mix->audio_reset, 0);
		FUNC1(200);
		FUNC2(&mix->audio_reset, 1);
		FUNC1(100);
		FUNC2(&mix->audio_reset, 0);
		FUNC1(100);
	}
}