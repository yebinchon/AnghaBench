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
struct usb_mixer_interface {int disconnected; int /*<<< orphan*/  (* private_free ) (struct usb_mixer_interface*) ;scalar_t__ rc_urb; scalar_t__ urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_mixer_interface*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct usb_mixer_interface *mixer)
{
	if (mixer->disconnected)
		return;
	if (mixer->urb)
		FUNC1(mixer->urb);
	if (mixer->rc_urb)
		FUNC1(mixer->rc_urb);
	if (mixer->private_free)
		mixer->private_free(mixer);
	mixer->disconnected = true;
}