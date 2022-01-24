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
struct usb_mixer_interface {TYPE_3__* chip; TYPE_1__* rc_cfg; TYPE_2__* rc_urb; } ;
struct TYPE_6__ {int /*<<< orphan*/  usb_id; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mute_mixer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_mixer_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4(struct usb_mixer_interface *mixer,
				    int unitid)
{
	if (!mixer->rc_cfg)
		return;
	/* unit ids specific to Extigy/Audigy 2 NX: */
	switch (unitid) {
	case 0: /* remote control */
		mixer->rc_urb->dev = mixer->chip->dev;
		FUNC3(mixer->rc_urb, GFP_ATOMIC);
		break;
	case 4: /* digital in jack */
	case 7: /* line in jacks */
	case 19: /* speaker out jacks */
	case 20: /* headphones out jack */
		break;
	/* live24ext: 4 = line-in jack */
	case 3:	/* hp-out jack (may actuate Mute) */
		if (mixer->chip->usb_id == FUNC0(0x041e, 0x3040) ||
		    mixer->chip->usb_id == FUNC0(0x041e, 0x3048))
			FUNC1(mixer, mixer->rc_cfg->mute_mixer_id);
		break;
	default:
		FUNC2(mixer->chip, "memory change in unknown unit %d\n", unitid);
		break;
	}
}