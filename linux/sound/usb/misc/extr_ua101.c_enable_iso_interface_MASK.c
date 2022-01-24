#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; } ;
struct ua101 {TYPE_3__* dev; TYPE_1__** intf; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct usb_host_interface* cur_altsetting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ua101 *ua, unsigned int intf_index)
{
	struct usb_host_interface *alts;

	alts = ua->intf[intf_index]->cur_altsetting;
	if (alts->desc.bAlternateSetting != 1) {
		int err = FUNC2(ua->dev,
					    alts->desc.bInterfaceNumber, 1);
		if (err < 0) {
			FUNC0(&ua->dev->dev,
				"cannot initialize interface; error %d: %s\n",
				err, FUNC1(err));
			return err;
		}
	}
	return 0;
}