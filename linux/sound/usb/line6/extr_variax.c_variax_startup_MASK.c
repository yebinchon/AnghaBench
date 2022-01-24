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
struct TYPE_2__ {int /*<<< orphan*/  card; } ;
struct usb_line6_variax {int startup_progress; TYPE_1__ line6; } ;
struct usb_line6 {int /*<<< orphan*/  startup_work; } ;

/* Variables and functions */
#define  VARIAX_STARTUP_ACTIVATE 130 
 int /*<<< orphan*/  VARIAX_STARTUP_DELAY1 ; 
 int /*<<< orphan*/  VARIAX_STARTUP_DELAY4 ; 
#define  VARIAX_STARTUP_SETUP 129 
#define  VARIAX_STARTUP_VERSIONREQ 128 
 struct usb_line6_variax* FUNC0 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_line6_variax*,int) ; 

__attribute__((used)) static void FUNC6(struct usb_line6 *line6)
{
	struct usb_line6_variax *variax = FUNC0(line6);

	switch (variax->startup_progress) {
	case VARIAX_STARTUP_VERSIONREQ:
		/* repeat request until getting the response */
		FUNC3(&line6->startup_work,
				      FUNC2(VARIAX_STARTUP_DELAY1));
		/* request firmware version: */
		FUNC1(line6);
		break;
	case VARIAX_STARTUP_ACTIVATE:
		/* activate device: */
		FUNC5(variax, 1);
		variax->startup_progress = VARIAX_STARTUP_SETUP;
		FUNC3(&line6->startup_work,
				      FUNC2(VARIAX_STARTUP_DELAY4));
		break;
	case VARIAX_STARTUP_SETUP:
		/* ALSA audio interface: */
		FUNC4(variax->line6.card);
		break;
	}
}