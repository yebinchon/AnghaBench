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
struct usb_line6 {int /*<<< orphan*/  max_packet_size; struct snd_line6_midi* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct midi_buffer {int dummy; } ;
struct snd_line6_midi {struct midi_buffer midibuf_out; } ;
struct TYPE_2__ {struct usb_line6* line6; } ;

/* Variables and functions */
 int LINE6_FALLBACK_MAXPACKETSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct midi_buffer*) ; 
 int FUNC1 (struct midi_buffer*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct midi_buffer*,unsigned char*,int) ; 
 TYPE_1__* FUNC3 (struct snd_rawmidi_substream*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_line6*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_rawmidi_substream*,int) ; 
 int FUNC7 (struct snd_rawmidi_substream*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC8(struct snd_rawmidi_substream *substream)
{
	struct usb_line6 *line6 =
	    FUNC3(substream)->line6;
	struct snd_line6_midi *line6midi = line6->line6midi;
	struct midi_buffer *mb = &line6midi->midibuf_out;
	unsigned char chunk[LINE6_FALLBACK_MAXPACKETSIZE];
	int req, done;

	for (;;) {
		req = FUNC4(FUNC0(mb), line6->max_packet_size);
		done = FUNC7(substream, chunk, req);

		if (done == 0)
			break;

		FUNC2(mb, chunk, done);
		FUNC6(substream, done);
	}

	for (;;) {
		done = FUNC1(mb, chunk,
					  LINE6_FALLBACK_MAXPACKETSIZE);

		if (done == 0)
			break;

		FUNC5(line6, chunk, done);
	}
}