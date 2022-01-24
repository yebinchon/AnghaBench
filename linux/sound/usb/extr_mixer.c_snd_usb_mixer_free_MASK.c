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
struct usb_mixer_interface {struct usb_mixer_interface* rc_setup_packet; TYPE_1__* rc_urb; TYPE_1__* urb; struct usb_mixer_interface* id_elems; } ;
struct TYPE_2__ {struct usb_mixer_interface* transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_mixer_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_mixer_interface*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct usb_mixer_interface *mixer)
{
	/* kill pending URBs */
	FUNC1(mixer);

	FUNC0(mixer->id_elems);
	if (mixer->urb) {
		FUNC0(mixer->urb->transfer_buffer);
		FUNC2(mixer->urb);
	}
	FUNC2(mixer->rc_urb);
	FUNC0(mixer->rc_setup_packet);
	FUNC0(mixer);
}