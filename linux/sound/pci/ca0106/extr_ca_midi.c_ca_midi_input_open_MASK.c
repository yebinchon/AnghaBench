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
struct snd_ca_midi {int midi_mode; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  enter_uart; int /*<<< orphan*/  reset; struct snd_rawmidi_substream* substream_input; int /*<<< orphan*/  dev_id; } ;
struct TYPE_2__ {struct snd_ca_midi* private_data; } ;

/* Variables and functions */
 int CA_MIDI_MODE_INPUT ; 
 int CA_MIDI_MODE_OUTPUT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ca_midi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct snd_ca_midi *midi = substream->rmidi->private_data;
	unsigned long flags;
	
	if (FUNC1(!midi->dev_id))
		return -ENXIO;
	FUNC2(&midi->open_lock, flags);
	midi->midi_mode |= CA_MIDI_MODE_INPUT;
	midi->substream_input = substream;
	if (!(midi->midi_mode & CA_MIDI_MODE_OUTPUT)) {
		FUNC3(&midi->open_lock, flags);
		FUNC0(midi, midi->reset, 1);
		FUNC0(midi, midi->enter_uart, 1);
	} else {
		FUNC3(&midi->open_lock, flags);
	}
	return 0;
}