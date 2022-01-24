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
struct snd_sb {int open; int /*<<< orphan*/  open_lock; int /*<<< orphan*/ * midi_substream_output; int /*<<< orphan*/  midi_timer; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;

/* Variables and functions */
 int SB_OPEN_MIDI_INPUT ; 
 int SB_OPEN_MIDI_OUTPUT ; 
 int SB_OPEN_MIDI_OUTPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip;

	chip = substream->rmidi->private_data;
	FUNC0(&chip->midi_timer);
	FUNC2(&chip->open_lock, flags);
	chip->open &= ~(SB_OPEN_MIDI_OUTPUT | SB_OPEN_MIDI_OUTPUT_TRIGGER);
	chip->midi_substream_output = NULL;
	if (!(chip->open & SB_OPEN_MIDI_INPUT)) {
		FUNC3(&chip->open_lock, flags);
		FUNC1(chip);		/* reset DSP */
	} else {
		FUNC3(&chip->open_lock, flags);
	}
	return 0;
}