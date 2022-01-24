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
struct snd_sb {int open; int /*<<< orphan*/  midi_input_lock; int /*<<< orphan*/  midi_substream_input; struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_AVAIL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int SB_OPEN_MIDI_INPUT_TRIGGER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC5(struct snd_sb *chip)
{
	struct snd_rawmidi *rmidi;
	int max = 64;
	char byte;

	if (!chip)
		return IRQ_NONE;
	
	rmidi = chip->rmidi;
	if (!rmidi) {
		FUNC1(FUNC0(chip, DATA_AVAIL));	/* ack interrupt */
		return IRQ_NONE;
	}

	FUNC3(&chip->midi_input_lock);
	while (max-- > 0) {
		if (FUNC1(FUNC0(chip, DATA_AVAIL)) & 0x80) {
			byte = FUNC1(FUNC0(chip, READ));
			if (chip->open & SB_OPEN_MIDI_INPUT_TRIGGER) {
				FUNC2(chip->midi_substream_input, &byte, 1);
			}
		}
	}
	FUNC4(&chip->midi_input_lock);
	return IRQ_HANDLED;
}