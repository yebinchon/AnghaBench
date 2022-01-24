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
struct usb_interface_descriptor {int bNumEndpoints; int /*<<< orphan*/  bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_midi {int /*<<< orphan*/ * roland_load_ctl; int /*<<< orphan*/  card; TYPE_1__* dev; struct usb_interface* iface; } ;
struct TYPE_4__ {int bmAttributes; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_ENDPOINT_XFERTYPE_MASK ; 
 int USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct usb_host_interface*,int) ; 
 struct usb_interface_descriptor* FUNC2 (struct usb_host_interface*) ; 
 int /*<<< orphan*/  roland_load_ctl ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct snd_usb_midi*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_usb_midi *umidi)
{
	struct usb_interface *intf;
	struct usb_host_interface *hostif;
	struct usb_interface_descriptor *intfd;

	intf = umidi->iface;
	if (!intf || intf->num_altsetting != 2)
		return;

	hostif = &intf->altsetting[1];
	intfd = FUNC2(hostif);
       /* If either or both of the endpoints support interrupt transfer,
        * then use the alternate setting
        */
	if (intfd->bNumEndpoints != 2 ||
	    !((FUNC1(hostif, 0)->bmAttributes &
	       USB_ENDPOINT_XFERTYPE_MASK) == USB_ENDPOINT_XFER_INT ||
	      (FUNC1(hostif, 1)->bmAttributes &
	       USB_ENDPOINT_XFERTYPE_MASK) == USB_ENDPOINT_XFER_INT))
		return;

	FUNC0(&umidi->dev->dev, "switching to altsetting %d with int ep\n",
		    intfd->bAlternateSetting);
	FUNC5(umidi->dev, intfd->bInterfaceNumber,
			  intfd->bAlternateSetting);

	umidi->roland_load_ctl = FUNC4(&roland_load_ctl, umidi);
	if (FUNC3(umidi->card, umidi->roland_load_ctl) < 0)
		umidi->roland_load_ctl = NULL;
}