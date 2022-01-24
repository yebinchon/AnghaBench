#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct snd_usb_midi_in_endpoint {TYPE_1__** urbs; struct snd_usb_midi* umidi; } ;
struct snd_usb_midi_endpoint_info {int /*<<< orphan*/  in_ep; int /*<<< orphan*/  in_interval; } ;
struct snd_usb_midi_endpoint {struct snd_usb_midi_in_endpoint* in; } ;
struct snd_usb_midi {TYPE_2__* dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int INPUT_URBS ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct snd_usb_midi_in_endpoint* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_midi_in_endpoint*) ; 
 int /*<<< orphan*/  snd_usbmidi_in_urb_complete ; 
 void* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,unsigned int,void*,int,int /*<<< orphan*/ ,struct snd_usb_midi_in_endpoint*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,unsigned int,void*,int,int /*<<< orphan*/ ,struct snd_usb_midi_in_endpoint*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct snd_usb_midi *umidi,
					  struct snd_usb_midi_endpoint_info *ep_info,
					  struct snd_usb_midi_endpoint *rep)
{
	struct snd_usb_midi_in_endpoint *ep;
	void *buffer;
	unsigned int pipe;
	int length;
	unsigned int i;
	int err;

	rep->in = NULL;
	ep = FUNC1(sizeof(*ep), GFP_KERNEL);
	if (!ep)
		return -ENOMEM;
	ep->umidi = umidi;

	for (i = 0; i < INPUT_URBS; ++i) {
		ep->urbs[i] = FUNC4(0, GFP_KERNEL);
		if (!ep->urbs[i]) {
			err = -ENOMEM;
			goto error;
		}
	}
	if (ep_info->in_interval)
		pipe = FUNC9(umidi->dev, ep_info->in_ep);
	else
		pipe = FUNC8(umidi->dev, ep_info->in_ep);
	length = FUNC7(umidi->dev, pipe, 0);
	for (i = 0; i < INPUT_URBS; ++i) {
		buffer = FUNC3(umidi->dev, length, GFP_KERNEL,
					    &ep->urbs[i]->transfer_dma);
		if (!buffer) {
			err = -ENOMEM;
			goto error;
		}
		if (ep_info->in_interval)
			FUNC6(ep->urbs[i], umidi->dev,
					 pipe, buffer, length,
					 snd_usbmidi_in_urb_complete,
					 ep, ep_info->in_interval);
		else
			FUNC5(ep->urbs[i], umidi->dev,
					  pipe, buffer, length,
					  snd_usbmidi_in_urb_complete, ep);
		ep->urbs[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
		err = FUNC10(ep->urbs[i]);
		if (err < 0) {
			FUNC0(&umidi->dev->dev, "invalid MIDI in EP %x\n",
				ep_info->in_ep);
			goto error;
		}
	}

	rep->in = ep;
	return 0;

 error:
	FUNC2(ep);
	return -ENOMEM;
}