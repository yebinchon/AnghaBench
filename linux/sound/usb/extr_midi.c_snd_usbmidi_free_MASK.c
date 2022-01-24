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
struct snd_usb_midi_endpoint {scalar_t__ in; scalar_t__ out; } ;
struct snd_usb_midi {int /*<<< orphan*/  mutex; struct snd_usb_midi_endpoint* endpoints; } ;

/* Variables and functions */
 int MIDI_MAX_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_midi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_midi *umidi)
{
	int i;

	for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
		struct snd_usb_midi_endpoint *ep = &umidi->endpoints[i];
		if (ep->out)
			FUNC3(ep->out);
		if (ep->in)
			FUNC2(ep->in);
	}
	FUNC1(&umidi->mutex);
	FUNC0(umidi);
}