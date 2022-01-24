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
typedef  int uint8_t ;
struct snd_usb_midi_in_endpoint {int in_sysex; unsigned int last_cin; } ;

/* Variables and functions */
 unsigned int* snd_usbmidi_cin_length ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_midi_in_endpoint*,int /*<<< orphan*/ ,int*,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct snd_usb_midi_in_endpoint *ep,
				     uint8_t *buffer, int buffer_length)
{
	unsigned int i, cin, length;

	for (i = 0; i + 3 < buffer_length; i += 4) {
		if (buffer[i] == 0 && i > 0)
			break;
		cin = buffer[i] & 0x0f;
		if (ep->in_sysex &&
		    cin == ep->last_cin &&
		    (buffer[i + 1 + (cin == 0x6)] & 0x80) == 0)
			cin = 0x4;
#if 0
		if (buffer[i + 1] == 0x90) {
			/*
			 * Either a corrupted running status or a real note-on
			 * message; impossible to detect reliably.
			 */
		}
#endif
		length = snd_usbmidi_cin_length[cin];
		FUNC0(ep, 0, &buffer[i + 1], length);
		ep->in_sysex = cin == 0x4;
		if (!ep->in_sysex)
			ep->last_cin = cin;
	}
}