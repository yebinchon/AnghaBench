#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_line6 {TYPE_1__* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_4__ {struct usb_line6* line6; } ;
struct TYPE_3__ {scalar_t__ num_active_send_urbs; int /*<<< orphan*/  lock; struct snd_rawmidi_substream* substream_transmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_substream*) ; 
 TYPE_2__* FUNC1 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_rawmidi_substream *substream,
				      int up)
{
	unsigned long flags;
	struct usb_line6 *line6 =
	    FUNC1(substream)->line6;

	line6->line6midi->substream_transmit = substream;
	FUNC2(&line6->line6midi->lock, flags);

	if (line6->line6midi->num_active_send_urbs == 0)
		FUNC0(substream);

	FUNC3(&line6->line6midi->lock, flags);
}