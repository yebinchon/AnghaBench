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
struct snd_ca_midi {int tx_enable; int rx_enable; unsigned int ipr_rx; int midi_mode; unsigned int ipr_tx; int /*<<< orphan*/  output_lock; int /*<<< orphan*/  (* interrupt_disable ) (struct snd_ca_midi*,int) ;scalar_t__ substream_output; int /*<<< orphan*/  input_lock; scalar_t__ substream_input; int /*<<< orphan*/ * rmidi; } ;

/* Variables and functions */
 int CA_MIDI_MODE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ca_midi*) ; 
 scalar_t__ FUNC1 (struct snd_ca_midi*) ; 
 scalar_t__ FUNC2 (struct snd_ca_midi*) ; 
 unsigned char FUNC3 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ca_midi*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned char*,int) ; 
 int FUNC6 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_ca_midi*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_ca_midi*,int) ; 

__attribute__((used)) static void FUNC11(struct snd_ca_midi *midi, unsigned int status)
{
	unsigned char byte;

	if (midi->rmidi == NULL) {
		midi->interrupt_disable(midi,midi->tx_enable | midi->rx_enable);
		return;
	}

	FUNC7(&midi->input_lock);
	if ((status & midi->ipr_rx) && FUNC1(midi)) {
		if (!(midi->midi_mode & CA_MIDI_MODE_INPUT)) {
			FUNC0(midi);
		} else {
			byte = FUNC3(midi);
			if(midi->substream_input)
				FUNC5(midi->substream_input, &byte, 1);


		}
	}
	FUNC8(&midi->input_lock);

	FUNC7(&midi->output_lock);
	if ((status & midi->ipr_tx) && FUNC2(midi)) {
		if (midi->substream_output &&
		    FUNC6(midi->substream_output, &byte, 1) == 1) {
			FUNC4(midi, byte);
		} else {
			midi->interrupt_disable(midi,midi->tx_enable);
		}
	}
	FUNC8(&midi->output_lock);

}