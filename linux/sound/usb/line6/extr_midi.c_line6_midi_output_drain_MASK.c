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
struct usb_line6 {struct snd_line6_midi* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_line6_midi {scalar_t__ num_active_send_urbs; int /*<<< orphan*/  send_wait; } ;
struct TYPE_2__ {struct usb_line6* line6; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_rawmidi_substream *substream)
{
	struct usb_line6 *line6 =
	    FUNC0(substream)->line6;
	struct snd_line6_midi *midi = line6->line6midi;

	FUNC1(midi->send_wait,
				 midi->num_active_send_urbs == 0);
}