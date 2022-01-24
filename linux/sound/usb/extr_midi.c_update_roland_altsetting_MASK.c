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
struct usb_interface_descriptor {int /*<<< orphan*/  bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_interface {struct usb_host_interface* altsetting; struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_midi {int /*<<< orphan*/  list; int /*<<< orphan*/  dev; TYPE_1__* roland_load_ctl; struct usb_interface* iface; } ;
struct TYPE_2__ {int private_value; } ;

/* Variables and functions */
 struct usb_interface_descriptor* FUNC0 (struct usb_host_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_midi *umidi)
{
	struct usb_interface *intf;
	struct usb_host_interface *hostif;
	struct usb_interface_descriptor *intfd;
	int is_light_load;

	intf = umidi->iface;
	is_light_load = intf->cur_altsetting != intf->altsetting;
	if (umidi->roland_load_ctl->private_value == is_light_load)
		return;
	hostif = &intf->altsetting[umidi->roland_load_ctl->private_value];
	intfd = FUNC0(hostif);
	FUNC2(&umidi->list);
	FUNC3(umidi->dev, intfd->bInterfaceNumber,
			  intfd->bAlternateSetting);
	FUNC1(&umidi->list);
}