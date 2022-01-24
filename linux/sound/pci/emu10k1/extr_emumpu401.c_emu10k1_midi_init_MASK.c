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
struct snd_rawmidi {int info_flags; int /*<<< orphan*/  private_free; struct snd_emu10k1_midi* private_data; int /*<<< orphan*/  name; } ;
struct snd_emu10k1_midi {struct snd_rawmidi* rmidi; int /*<<< orphan*/  output_lock; int /*<<< orphan*/  input_lock; int /*<<< orphan*/  open_lock; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int SNDRV_RAWMIDI_INFO_DUPLEX ; 
 int SNDRV_RAWMIDI_INFO_INPUT ; 
 int SNDRV_RAWMIDI_INFO_OUTPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int /*<<< orphan*/  snd_emu10k1_midi_free ; 
 int /*<<< orphan*/  snd_emu10k1_midi_input ; 
 int /*<<< orphan*/  snd_emu10k1_midi_output ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_rawmidi**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct snd_emu10k1 *emu, struct snd_emu10k1_midi *midi, int device, char *name)
{
	struct snd_rawmidi *rmidi;
	int err;

	if ((err = FUNC0(emu->card, name, device, 1, 1, &rmidi)) < 0)
		return err;
	midi->emu = emu;
	FUNC2(&midi->open_lock);
	FUNC2(&midi->input_lock);
	FUNC2(&midi->output_lock);
	FUNC3(rmidi->name, name);
	FUNC1(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_emu10k1_midi_output);
	FUNC1(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_emu10k1_midi_input);
	rmidi->info_flags |= SNDRV_RAWMIDI_INFO_OUTPUT |
	                     SNDRV_RAWMIDI_INFO_INPUT |
	                     SNDRV_RAWMIDI_INFO_DUPLEX;
	rmidi->private_data = midi;
	rmidi->private_free = snd_emu10k1_midi_free;
	midi->rmidi = rmidi;
	return 0;
}