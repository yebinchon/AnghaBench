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
struct snd_kcontrol {int /*<<< orphan*/  put; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PD_EAPD ; 
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int ENOENT ; 
 int /*<<< orphan*/  bind_hp_volsw_put ; 
 struct snd_kcontrol* FUNC0 (struct snd_ac97*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hp_master_mute_sw_put ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 *ac97)
{
	struct snd_kcontrol *msw = FUNC0(ac97, "Master Playback Switch", NULL);
	struct snd_kcontrol *mvol = FUNC0(ac97, "Master Playback Volume", NULL);
	if (! msw || ! mvol)
		return -ENOENT;
	msw->put = hp_master_mute_sw_put;
	mvol->put = bind_hp_volsw_put;
	FUNC1(ac97, "External Amplifier", NULL);
	FUNC1(ac97, "Headphone Playback", "Switch");
	FUNC1(ac97, "Headphone Playback", "Volume");
	FUNC2(
		ac97, AC97_POWERDOWN,
		AC97_PD_EAPD, AC97_PD_EAPD /* mute LED on */
	);
	return 0;
}