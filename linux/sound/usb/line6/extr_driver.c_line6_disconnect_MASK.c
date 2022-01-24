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
struct usb_line6 {int /*<<< orphan*/  card; TYPE_1__* properties; int /*<<< orphan*/  (* disconnect ) (struct usb_line6*) ;scalar_t__ line6pcm; int /*<<< orphan*/ * urb_listen; int /*<<< orphan*/  startup_work; struct usb_device* usbdev; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_line6*) ; 
 struct usb_line6* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,int /*<<< orphan*/ *) ; 

void FUNC11(struct usb_interface *interface)
{
	struct usb_line6 *line6 = FUNC9(interface);
	struct usb_device *usbdev = FUNC3(interface);

	if (!line6)
		return;

	if (FUNC0(usbdev != line6->usbdev))
		return;

	FUNC1(&line6->startup_work);

	if (line6->urb_listen != NULL)
		FUNC5(line6);

	FUNC6(line6->card);
	if (line6->line6pcm)
		FUNC4(line6->line6pcm);
	if (line6->disconnect)
		line6->disconnect(line6);

	FUNC2(&interface->dev, "Line 6 %s now disconnected\n",
		 line6->properties->name);

	/* make sure the device isn't destructed twice: */
	FUNC10(interface, NULL);

	FUNC7(line6->card);
}