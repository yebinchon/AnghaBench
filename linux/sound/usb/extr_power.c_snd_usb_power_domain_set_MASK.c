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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_power_domain {int pd_id; int pd_d2d0_rec; int pd_d1d0_rec; } ;
struct snd_usb_audio {struct usb_device* dev; } ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  current_state ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UAC2_CS_CUR ; 
 int UAC3_AC_POWER_DOMAIN_CONTROL ; 
 unsigned char UAC3_PD_STATE_D0 ; 
#define  UAC3_PD_STATE_D1 129 
#define  UAC3_PD_STATE_D2 128 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char,...) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,unsigned char*,int) ; 
 int FUNC3 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC7(struct snd_usb_audio *chip,
			     struct snd_usb_power_domain *pd,
			     unsigned char state)
{
	struct usb_device *dev = chip->dev;
	unsigned char current_state;
	int err, idx;

	idx = FUNC3(chip) | (pd->pd_id << 8);

	err = FUNC2(chip->dev, FUNC5(chip->dev, 0),
			      UAC2_CS_CUR,
			      USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
			      UAC3_AC_POWER_DOMAIN_CONTROL << 8, idx,
			      &current_state, sizeof(current_state));
	if (err < 0) {
		FUNC1(&dev->dev, "Can't get UAC3 power state for id %d\n",
			pd->pd_id);
		return err;
	}

	if (current_state == state) {
		FUNC0(&dev->dev, "UAC3 power domain id %d already in state %d\n",
			pd->pd_id, state);
		return 0;
	}

	err = FUNC2(chip->dev, FUNC6(chip->dev, 0), UAC2_CS_CUR,
			      USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
			      UAC3_AC_POWER_DOMAIN_CONTROL << 8, idx,
			      &state, sizeof(state));
	if (err < 0) {
		FUNC1(&dev->dev, "Can't set UAC3 power state to %d for id %d\n",
			state, pd->pd_id);
		return err;
	}

	if (state == UAC3_PD_STATE_D0) {
		switch (current_state) {
		case UAC3_PD_STATE_D2:
			FUNC4(pd->pd_d2d0_rec * 50);
			break;
		case UAC3_PD_STATE_D1:
			FUNC4(pd->pd_d1d0_rec * 50);
			break;
		default:
			return -EINVAL;
		}
	}

	FUNC0(&dev->dev, "UAC3 power domain id %d change to state %d\n",
		pd->pd_id, state);

	return 0;
}