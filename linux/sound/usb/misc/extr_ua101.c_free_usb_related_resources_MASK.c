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
struct usb_interface {int dummy; } ;
struct ua101 {int /*<<< orphan*/  mutex; struct usb_interface** intf; int /*<<< orphan*/  playback; int /*<<< orphan*/  capture; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct usb_interface**) ; 
 int /*<<< orphan*/  FUNC1 (struct ua101*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ua101_driver ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ua101 *ua,
				       struct usb_interface *interface)
{
	unsigned int i;
	struct usb_interface *intf;

	FUNC3(&ua->mutex);
	FUNC2(&ua->capture);
	FUNC2(&ua->playback);
	FUNC4(&ua->mutex);
	FUNC1(ua, &ua->capture);
	FUNC1(ua, &ua->playback);

	for (i = 0; i < FUNC0(ua->intf); ++i) {
		FUNC3(&ua->mutex);
		intf = ua->intf[i];
		ua->intf[i] = NULL;
		FUNC4(&ua->mutex);
		if (intf) {
			FUNC6(intf, NULL);
			if (intf != interface)
				FUNC5(&ua101_driver,
							     intf);
		}
	}
}