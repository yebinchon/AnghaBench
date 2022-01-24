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
typedef  scalar_t__ u32 ;
struct usb_line6 {int /*<<< orphan*/  startup_work; struct usb_device* usbdev; } ;
struct usb_line6_toneport {size_t source; struct usb_line6 line6; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int code; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TONEPORT_PCM_DELAY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct usb_line6*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_line6_toneport*) ; 
 scalar_t__ FUNC7 (struct usb_line6_toneport*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int,int) ; 
 TYPE_1__* toneport_source_info ; 
 int /*<<< orphan*/  FUNC9 (struct usb_line6_toneport*) ; 

__attribute__((used)) static int FUNC10(struct usb_line6_toneport *toneport)
{
	u32 *ticks;
	struct usb_line6 *line6 = &toneport->line6;
	struct usb_device *usbdev = line6->usbdev;

	ticks = FUNC1(sizeof(*ticks), GFP_KERNEL);
	if (!ticks)
		return -ENOMEM;

	/* sync time on device with host: */
	/* note: 32-bit timestamps overflow in year 2106 */
	*ticks = (u32)FUNC2();
	FUNC3(line6, 0x80c6, ticks, 4);
	FUNC0(ticks);

	/* enable device: */
	FUNC8(usbdev, 0x0301, 0x0000);

	/* initialize source select: */
	if (FUNC7(toneport))
		FUNC8(usbdev,
				  toneport_source_info[toneport->source].code,
				  0x0000);

	if (FUNC6(toneport))
		FUNC9(toneport);

	FUNC5(&toneport->line6.startup_work,
			      FUNC4(TONEPORT_PCM_DELAY * 1000));
	return 0;
}