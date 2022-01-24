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
struct usb_line6_pod {int startup_progress; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  line6; } ;
struct usb_line6 {int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int POD_STARTUP_DONE ; 
#define  POD_STARTUP_SETUP 129 
#define  POD_STARTUP_VERSIONREQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_line6_pod* FUNC2 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usb_line6 *line6)
{
	struct usb_line6_pod *pod = FUNC2(line6);

	switch (pod->startup_progress) {
	case POD_STARTUP_VERSIONREQ:
		/* request firmware version: */
		FUNC3(line6);
		break;
	case POD_STARTUP_SETUP:
		/* serial number: */
		FUNC1(&pod->line6, &pod->serial_number);

		/* ALSA audio interface: */
		if (FUNC4(line6->card))
			FUNC0(line6->ifcdev, "Failed to register POD card.\n");
		pod->startup_progress = POD_STARTUP_DONE;
		break;
	default:
		break;
	}
}