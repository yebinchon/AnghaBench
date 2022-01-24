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
struct snd_emu10k1_midi {int midi_mode; int /*<<< orphan*/  tx_enable; int /*<<< orphan*/  output_lock; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int EMU10K1_MIDI_MODE_OUTPUT ; 
 scalar_t__ FUNC0 (struct snd_emu10k1*,struct snd_emu10k1_midi*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,struct snd_emu10k1_midi*,unsigned char) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct snd_rawmidi_substream *substream, int up)
{
	struct snd_emu10k1 *emu;
	struct snd_emu10k1_midi *midi = (struct snd_emu10k1_midi *)substream->rmidi->private_data;
	unsigned long flags;

	emu = midi->emu;
	if (FUNC2(!emu))
		return;

	if (up) {
		int max = 4;
		unsigned char byte;
	
		/* try to send some amount of bytes here before interrupts */
		FUNC6(&midi->output_lock, flags);
		while (max > 0) {
			if (FUNC0(emu, midi)) {
				if (!(midi->midi_mode & EMU10K1_MIDI_MODE_OUTPUT) ||
				    FUNC5(substream, &byte, 1) != 1) {
					/* no more data */
					FUNC7(&midi->output_lock, flags);
					return;
				}
				FUNC1(emu, midi, byte);
				max--;
			} else {
				break;
			}
		}
		FUNC7(&midi->output_lock, flags);
		FUNC4(emu, midi->tx_enable);
	} else {
		FUNC3(emu, midi->tx_enable);
	}
}