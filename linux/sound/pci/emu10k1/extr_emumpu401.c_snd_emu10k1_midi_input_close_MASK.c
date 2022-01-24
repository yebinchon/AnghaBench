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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_emu10k1_midi {int midi_mode; int /*<<< orphan*/  open_lock; int /*<<< orphan*/ * substream_input; int /*<<< orphan*/  rx_enable; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int EMU10K1_MIDI_MODE_INPUT ; 
 int EMU10K1_MIDI_MODE_OUTPUT ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPU401_RESET ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_emu10k1*,struct snd_emu10k1_midi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_rawmidi_substream *substream)
{
	struct snd_emu10k1 *emu;
	struct snd_emu10k1_midi *midi = (struct snd_emu10k1_midi *)substream->rmidi->private_data;
	unsigned long flags;
	int err = 0;

	emu = midi->emu;
	if (FUNC0(!emu))
		return -ENXIO;
	FUNC3(&midi->open_lock, flags);
	FUNC1(emu, midi->rx_enable);
	midi->midi_mode &= ~EMU10K1_MIDI_MODE_INPUT;
	midi->substream_input = NULL;
	if (!(midi->midi_mode & EMU10K1_MIDI_MODE_OUTPUT)) {
		FUNC4(&midi->open_lock, flags);
		err = FUNC2(emu, midi, MPU401_RESET, 0);
	} else {
		FUNC4(&midi->open_lock, flags);
	}
	return err;
}