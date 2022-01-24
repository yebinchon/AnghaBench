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
struct snd_rawmidi {int info_flags; struct snd_cs46xx* private_data; int /*<<< orphan*/  name; } ;
struct snd_cs46xx {struct snd_rawmidi* rmidi; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int SNDRV_RAWMIDI_INFO_DUPLEX ; 
 int SNDRV_RAWMIDI_INFO_INPUT ; 
 int SNDRV_RAWMIDI_INFO_OUTPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int /*<<< orphan*/  snd_cs46xx_midi_input ; 
 int /*<<< orphan*/  snd_cs46xx_midi_output ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_rawmidi**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct snd_cs46xx *chip, int device)
{
	struct snd_rawmidi *rmidi;
	int err;

	if ((err = FUNC0(chip->card, "CS46XX", device, 1, 1, &rmidi)) < 0)
		return err;
	FUNC2(rmidi->name, "CS46XX");
	FUNC1(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_cs46xx_midi_output);
	FUNC1(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_cs46xx_midi_input);
	rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT | SNDRV_RAWMIDI_INFO_INPUT | SNDRV_RAWMIDI_INFO_DUPLEX;
	rmidi->private_data = chip;
	chip->rmidi = rmidi;
	return 0;
}