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
struct snd_sb {int open; scalar_t__ hardware; int /*<<< orphan*/  open_lock; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SB_DSP_MIDI_INPUT_IRQ ; 
 scalar_t__ SB_HW_20 ; 
 int SB_OPEN_MIDI_INPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	struct snd_sb *chip;

	chip = substream->rmidi->private_data;
	FUNC1(&chip->open_lock, flags);
	if (up) {
		if (!(chip->open & SB_OPEN_MIDI_INPUT_TRIGGER)) {
			if (chip->hardware < SB_HW_20)
				FUNC0(chip, SB_DSP_MIDI_INPUT_IRQ);
			chip->open |= SB_OPEN_MIDI_INPUT_TRIGGER;
		}
	} else {
		if (chip->open & SB_OPEN_MIDI_INPUT_TRIGGER) {
			if (chip->hardware < SB_HW_20)
				FUNC0(chip, SB_DSP_MIDI_INPUT_IRQ);
			chip->open &= ~SB_OPEN_MIDI_INPUT_TRIGGER;
		}
	}
	FUNC2(&chip->open_lock, flags);
}