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
struct emu10k1x_midi {int tx_enable; int rx_enable; unsigned int ipr_rx; int midi_mode; unsigned int ipr_tx; int /*<<< orphan*/  output_lock; scalar_t__ substream_output; int /*<<< orphan*/  input_lock; scalar_t__ substream_input; int /*<<< orphan*/ * rmidi; } ;
struct emu10k1x {int dummy; } ;

/* Variables and functions */
 int EMU10K1X_MIDI_MODE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct emu10k1x*,struct emu10k1x_midi*) ; 
 scalar_t__ FUNC1 (struct emu10k1x*,struct emu10k1x_midi*) ; 
 scalar_t__ FUNC2 (struct emu10k1x*,struct emu10k1x_midi*) ; 
 unsigned char FUNC3 (struct emu10k1x*,struct emu10k1x_midi*) ; 
 int /*<<< orphan*/  FUNC4 (struct emu10k1x*,struct emu10k1x_midi*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct emu10k1x*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char*,int) ; 
 int FUNC7 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct emu10k1x *emu,
				       struct emu10k1x_midi *midi, unsigned int status)
{
	unsigned char byte;

	if (midi->rmidi == NULL) {
		FUNC5(emu, midi->tx_enable | midi->rx_enable);
		return;
	}

	FUNC8(&midi->input_lock);
	if ((status & midi->ipr_rx) && FUNC1(emu, midi)) {
		if (!(midi->midi_mode & EMU10K1X_MIDI_MODE_INPUT)) {
			FUNC0(emu, midi);
		} else {
			byte = FUNC3(emu, midi);
			if (midi->substream_input)
				FUNC6(midi->substream_input, &byte, 1);
		}
	}
	FUNC9(&midi->input_lock);

	FUNC8(&midi->output_lock);
	if ((status & midi->ipr_tx) && FUNC2(emu, midi)) {
		if (midi->substream_output &&
		    FUNC7(midi->substream_output, &byte, 1) == 1) {
			FUNC4(emu, midi, byte);
		} else {
			FUNC5(emu, midi->tx_enable);
		}
	}
	FUNC9(&midi->output_lock);
}