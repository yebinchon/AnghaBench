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
struct usb_line6 {struct snd_line6_midi* line6midi; TYPE_1__* properties; } ;
struct snd_rawmidi {int /*<<< orphan*/  private_free; struct snd_line6_midi* private_data; } ;
struct snd_line6_midi {int /*<<< orphan*/  midibuf_out; int /*<<< orphan*/  midibuf_in; struct usb_line6* line6; int /*<<< orphan*/  lock; int /*<<< orphan*/  send_wait; } ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LINE6_CAP_CONTROL_MIDI ; 
 int /*<<< orphan*/  MIDI_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_line6_midi* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snd_line6_midi_free ; 
 int FUNC3 (struct usb_line6*,struct snd_rawmidi**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct usb_line6 *line6)
{
	int err;
	struct snd_rawmidi *rmidi;
	struct snd_line6_midi *line6midi;

	if (!(line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI)) {
		/* skip MIDI initialization and report success */
		return 0;
	}

	err = FUNC3(line6, &rmidi);
	if (err < 0)
		return err;

	line6midi = FUNC1(sizeof(struct snd_line6_midi), GFP_KERNEL);
	if (!line6midi)
		return -ENOMEM;

	rmidi->private_data = line6midi;
	rmidi->private_free = snd_line6_midi_free;

	FUNC0(&line6midi->send_wait);
	FUNC4(&line6midi->lock);
	line6midi->line6 = line6;

	err = FUNC2(&line6midi->midibuf_in, MIDI_BUFFER_SIZE, 0);
	if (err < 0)
		return err;

	err = FUNC2(&line6midi->midibuf_out, MIDI_BUFFER_SIZE, 1);
	if (err < 0)
		return err;

	line6->line6midi = line6midi;
	return 0;
}