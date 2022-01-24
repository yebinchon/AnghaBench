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
struct bcd2000 {int /*<<< orphan*/  card; int /*<<< orphan*/  card_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcd2000*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devices_mutex ; 
 int /*<<< orphan*/  devices_used ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bcd2000* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct bcd2000 *bcd2k = FUNC6(interface);

	if (!bcd2k)
		return;

	FUNC2(&devices_mutex);

	/* make sure that userspace cannot create new requests */
	FUNC4(bcd2k->card);

	FUNC0(bcd2k, interface);

	FUNC1(bcd2k->card_index, devices_used);

	FUNC5(bcd2k->card);

	FUNC3(&devices_mutex);
}