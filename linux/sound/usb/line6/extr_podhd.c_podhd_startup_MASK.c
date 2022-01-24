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
struct usb_line6_podhd {int /*<<< orphan*/  serial_number; int /*<<< orphan*/  line6; } ;
struct usb_line6 {int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_line6_podhd* FUNC2 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_line6_podhd*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usb_line6 *line6)
{
	struct usb_line6_podhd *pod = FUNC2(line6);

	FUNC3(pod);
	FUNC1(&pod->line6, &pod->serial_number);
	if (FUNC4(line6->card))
		FUNC0(line6->ifcdev, "Failed to register POD HD card.\n");
}