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
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CS4231_LEFT_MIC_INPUT ; 
 int /*<<< orphan*/  CS4231_LINE_LEFT_OUTPUT ; 
 int /*<<< orphan*/  CS4231_LINE_RIGHT_OUTPUT ; 
 int /*<<< orphan*/  CS4231_RIGHT_MIC_INPUT ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_wss*) ; 
 int FUNC4 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int FUNC5 (struct snd_card*,struct snd_ctl_elem_id*,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/ * snd_interwave_controls ; 
 int /*<<< orphan*/  FUNC6 (struct snd_wss*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct snd_wss *chip)
{
	struct snd_card *card = chip->card;
	struct snd_ctl_elem_id id1, id2;
	unsigned int idx;
	int err;

	FUNC1(&id1, 0, sizeof(id1));
	FUNC1(&id2, 0, sizeof(id2));
	id1.iface = id2.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
#if 0
	/* remove mono microphone controls */
	strcpy(id1.name, "Mic Playback Switch");
	if ((err = snd_ctl_remove_id(card, &id1)) < 0)
		return err;
	strcpy(id1.name, "Mic Playback Volume");
	if ((err = snd_ctl_remove_id(card, &id1)) < 0)
		return err;
#endif
	/* add new master and mic controls */
	for (idx = 0; idx < FUNC0(snd_interwave_controls); idx++)
		if ((err = FUNC2(card, FUNC3(&snd_interwave_controls[idx], chip))) < 0)
			return err;
	FUNC6(chip, CS4231_LINE_LEFT_OUTPUT, 0x9f);
	FUNC6(chip, CS4231_LINE_RIGHT_OUTPUT, 0x9f);
	FUNC6(chip, CS4231_LEFT_MIC_INPUT, 0x9f);
	FUNC6(chip, CS4231_RIGHT_MIC_INPUT, 0x9f);
	/* reassign AUXA to SYNTHESIZER */
	FUNC7(id1.name, "Aux Playback Switch");
	FUNC7(id2.name, "Synth Playback Switch");
	if ((err = FUNC5(card, &id1, &id2)) < 0)
		return err;
	FUNC7(id1.name, "Aux Playback Volume");
	FUNC7(id2.name, "Synth Playback Volume");
	if ((err = FUNC5(card, &id1, &id2)) < 0)
		return err;
	/* reassign AUXB to CD */
	FUNC7(id1.name, "Aux Playback Switch"); id1.index = 1;
	FUNC7(id2.name, "CD Playback Switch");
	if ((err = FUNC5(card, &id1, &id2)) < 0)
		return err;
	FUNC7(id1.name, "Aux Playback Volume");
	FUNC7(id2.name, "CD Playback Volume");
	if ((err = FUNC5(card, &id1, &id2)) < 0)
		return err;
	return 0;
}