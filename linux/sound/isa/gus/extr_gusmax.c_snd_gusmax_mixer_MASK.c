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
struct snd_wss {struct snd_card* card; } ;
struct snd_ctl_elem_id {int index; int /*<<< orphan*/  name; int /*<<< orphan*/  iface; } ;
struct snd_card {int dummy; } ;
typedef  int /*<<< orphan*/  id2 ;
typedef  int /*<<< orphan*/  id1 ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  SNDRV_MIXER_ETYPE_INPUT ; 
 int /*<<< orphan*/  SNDRV_MIXER_ETYPE_SWITCH1 ; 
 int /*<<< orphan*/  SNDRV_MIXER_ETYPE_VOLUME1 ; 
 char* SNDRV_MIXER_IN_MIC ; 
 char* SNDRV_MIXER_IN_MONO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mixer ; 
 int FUNC1 (struct snd_card*,struct snd_ctl_elem_id*,struct snd_ctl_elem_id*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_wss *chip)
{
	struct snd_card *card = chip->card;
	struct snd_ctl_elem_id id1, id2;
	int err;
	
	FUNC0(&id1, 0, sizeof(id1));
	FUNC0(&id2, 0, sizeof(id2));
	id1.iface = id2.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	/* reassign AUXA to SYNTHESIZER */
	FUNC4(id1.name, "Aux Playback Switch");
	FUNC4(id2.name, "Synth Playback Switch");
	if ((err = FUNC1(card, &id1, &id2)) < 0)
		return err;
	FUNC4(id1.name, "Aux Playback Volume");
	FUNC4(id2.name, "Synth Playback Volume");
	if ((err = FUNC1(card, &id1, &id2)) < 0)
		return err;
	/* reassign AUXB to CD */
	FUNC4(id1.name, "Aux Playback Switch"); id1.index = 1;
	FUNC4(id2.name, "CD Playback Switch");
	if ((err = FUNC1(card, &id1, &id2)) < 0)
		return err;
	FUNC4(id1.name, "Aux Playback Volume");
	FUNC4(id2.name, "CD Playback Volume");
	if ((err = FUNC1(card, &id1, &id2)) < 0)
		return err;
#if 0
	/* reassign Mono Input to MIC */
	if (snd_mixer_group_rename(mixer,
				SNDRV_MIXER_IN_MONO, 0,
				SNDRV_MIXER_IN_MIC, 0) < 0)
		goto __error;
	if (snd_mixer_elem_rename(mixer,
				SNDRV_MIXER_IN_MONO, 0, SNDRV_MIXER_ETYPE_INPUT,
				SNDRV_MIXER_IN_MIC, 0) < 0)
		goto __error;
	if (snd_mixer_elem_rename(mixer,
				"Mono Capture Volume", 0, SNDRV_MIXER_ETYPE_VOLUME1,
				"Mic Capture Volume", 0) < 0)
		goto __error;
	if (snd_mixer_elem_rename(mixer,
				"Mono Capture Switch", 0, SNDRV_MIXER_ETYPE_SWITCH1,
				"Mic Capture Switch", 0) < 0)
		goto __error;
#endif
	return 0;
}