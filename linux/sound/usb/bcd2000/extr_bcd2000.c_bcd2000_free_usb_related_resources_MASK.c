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
struct bcd2000 {int /*<<< orphan*/ * intf; int /*<<< orphan*/  midi_in_urb; int /*<<< orphan*/  midi_out_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bcd2000 *bcd2k,
						struct usb_interface *interface)
{
	/* usb_kill_urb not necessary, urb is aborted automatically */

	FUNC0(bcd2k->midi_out_urb);
	FUNC0(bcd2k->midi_in_urb);

	if (bcd2k->intf) {
		FUNC1(bcd2k->intf, NULL);
		bcd2k->intf = NULL;
	}
}